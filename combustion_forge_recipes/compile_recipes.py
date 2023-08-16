#!/usr/bin/env python3

import json
import logging
import os
import os.path as path
from abc import ABC
from copy import deepcopy
from dataclasses import dataclass
from enum import Enum
from glob import glob
from io import TextIOWrapper
from typing import Union
import jsonschema

################################################################################
# This file is used to compile the recipes for the combustion forge in 
#   {combustion_forge_recipe_directory} into mcfunction files in 
#   {recipe_output_directory} that will handle checking for and producing the 
#   results of the recipes.
#
# If any recipes, or the config below, have been changed or added, make sure to 
#   rerun this script (in the project directory) and commit the changes to the
#   repository.
# Note: If a recipe has been removed, this will not clear them from 
#   {recipe_output_directory}. Do it yourself, peasant.
#
# Dependencies:
#  - jsonschema <https://pypi.org/project/jsonschema>
#     Run 'pip install jsonschema' in the terminal to install.
#

################################################################################
# CONFIG START                                                                 #
################################################################################
# Where the uncompiled combustion forge recipes are located. Relative path from
#   the project directory.
combustion_forge_recipe_directory = r'combustion_forge_recipes/recipes/'
# Where to output the compiled recipes to. Relative path from 
#   {combustion_forge_recipe_directory}.
recipe_output_directory = r'../../ExplosiveUtilities-DP/data/xplsvtlts/functions/combustion_forge/recipes/generated/'
# The file path to read in the recipe JSON schema from. Relative path from
#   {combustion_forge_recipe_directory}
recipe_schema_file_path = r'../recipe_schema.json'
# The file path to write out the function tag that will run all combustion forge
#   recipes. Relative path from {combustion_forge_recipe_directory}.
recipe_function_tag_file_path = r'../../ExplosiveUtilities-DP/data/xplsvtlts/tags/functions/combustion_forge_recipes/generated.json'
# The id for the function that decrements each slot of the combustion forge's
#   crafting grid.
decrement_crafting_grid_function_id = r'xplsvtlts:combustion_forge/recipes/decrement_crafting_grid'
# The resource id of the directory where the generation function files are 
#   located. Must end in a '/'.
recipe_function_directory_id = r'xplsvtlts:combustion_forge/recipes/generated/'
# The scoreboard to use to read and store to and from the variables used by the
#   recipes.
variable_storage_scoreboard = r'xplsvtlts'

logging_level = logging.ERROR
################################################################################
# CONFIG END                                                                   #
################################################################################



@dataclass
class Item:
    ''' Represents Minecraft items. '''
    ids: 'list[str]'
    tag: str = ''
    count: int = 1

    def do_ids_overlap(self, other_item: 'Item') -> bool:
        ''' Checks to see if there are item ids that exist in the both items' id
            lists. '''
        for id in self.ids:
            if id in other_item.ids:
                return True
            
        return False
    
    def do_items_overlap(self, other_item: 'Item') -> bool:
        ''' Checks to see if there is any overlap in what actual minecraft items 
            the items will match to. Returns true if the items share nbt AND 
            any ids in their item id lists overlap. '''
        return self.tag == other_item.tag and self.do_ids_overlap(other_item)

    @staticmethod
    def from_json(item_json: dict, ignore_count: bool = False) -> 'Item':
        ''' Expects JSON data to be pre-verified by the recipe schema. If 
            parsing fails a ValueError will be raised. 

            ignore_count
                Whether to ignore the count specified in the JSON and just set 
                the item count to 1. '''
        ids = item_json["item"]
        if type(ids) is not list:
            ids = [ids]
        
        tag = item_json.get("nbt", '')
        
        count = item_json.get("count", 1) if not ignore_count else 1

        return Item(ids, tag, count)
    
@dataclass
class IngredientWhitelist:
    ''' A list of items that can match for the ingredient of a recipe. '''
    acceptable_items: 'list[Item]'

    def do_items_overlap(self, other_whitelist: 'IngredientWhitelist') -> bool:
        ''' Checks to see if there is any overlap in what items the whitelists
            will match to. Returns true if any whitelist items share nbt AND 
            any ids in their item id lists overlap. '''
        for item in self.acceptable_items:
            for other_item in other_whitelist.acceptable_items:
                if item.do_items_overlap(other_item):
                    return True
                
        return False

    @staticmethod
    def from_json( item_whitelist_json: Union[dict, list], root_path: str = ''
                 , enforce_count_sameness: bool = False
                 ) -> 'IngredientWhitelist':
        ''' Expects JSON data to be pre-verified by the recipe schema. If 
            parsing fails a ValueError will be raised. 
                
            item_list_json
                The JSON object containing the ingredient item whitelist.
                Can either be an item object or a list of item objects to
                match with multiple items.
            root_path 
                The path of object keys leading up to the item JSON object, 
                used for error printing. Must end in period if non-empty.
            enforce_count_sameness
                Whether to raise an error if the counts of each item in the
                whitelist differ. '''
        acceptable_items = item_whitelist_json
        if type(acceptable_items) is not list:
            acceptable_items = [acceptable_items]
        for i in range(0, len(acceptable_items)):
            acceptable_items[i] = Item.from_json(acceptable_items[i])
            
        if enforce_count_sameness:
            first_count = None
            
            for item in acceptable_items:
                if first_count is None:
                    first_count = item.count
                else:
                    if item.count != first_count:
                        raise ValueError(f"Unable to decode recipe JSON: expected all counts of items to be same for list in key '{root_path}'")
        
        for i in range(0, len(acceptable_items)):
            for k in range(0, len(acceptable_items)):
                if i != k and acceptable_items[i].do_items_overlap(acceptable_items[k]):
                    raise ValueError(f"Unable to decode recipe JSON: found duplicate item ids in item id lists in item whitelist in '{root_path}' (found: '{root_path}[{i}]' and '{root_path}[{k}]')")
                        
        return IngredientWhitelist(acceptable_items)

# Used to fill in the empty spaces of shaped patterns.
empty_whitelist = IngredientWhitelist([])




class RecipeType(Enum):
    ''' Represents the possible recipe types that can be used in the recipe
        files. Values are the value that should be specified in the files. '''
    COMBUSTION_FORGE_SHAPED = "combustion_forge_shaped"
    COMBUSTION_FORGE_SHAPELESS = "combustion_forge_shapeless"

@dataclass
class Recipe(ABC):
    ''' Represents a generic combustion forge recipe. '''
    type: RecipeType
    result: Item

    @staticmethod
    def from_json(recipe_json: dict, root_path: str = '') -> 'Recipe':
        ''' Expects JSON data to be pre-verified by the recipe schema. If 
            parsing fails a ValueError will be raised. 

            root_path 
                The path of object keys leading up to the recipe JSON object, 
                used for error printing. Must end in period if non-empty. '''
        recipe_type = RecipeType(recipe_json["type"])

        result = Item.from_json(recipe_json["result"])
    
        if recipe_type == RecipeType.COMBUSTION_FORGE_SHAPED:
            item_keys = recipe_json["key"]
            for item_key, item_whitelist in item_keys.items():
                item_keys[item_key] = IngredientWhitelist.from_json(item_whitelist, f'{root_path}key')

            pattern = recipe_json["pattern"]
            for row in pattern:
                for key in row:
                    if key != ' ' and key not in item_keys.keys():
                        raise ValueError(f"Unable to decode recipe JSON: item key '{key}' not present in key '{root_path}key' for string in list in key '{root_path}pattern'")
            row1Size = len(pattern[0])
            for i in range(1, len(pattern)):
                if len(pattern[i]) != row1Size:
                    raise ValueError(f"Unable to decode recipe JSON: expected rows of the recipe pattern to be of equal length for key '{root_path}pattern'")

            return ShapedRecipe(pattern, item_keys, result)
        

        elif recipe_type == RecipeType.COMBUSTION_FORGE_SHAPELESS:
            ingredients = recipe_json["ingredients"]
            for i in range(0, len(ingredients)):
                ingredients[i] = IngredientWhitelist.from_json(ingredients[i], root_path=root_path+f'ingredients[{i}].', enforce_count_sameness=True)
            ingredient_item_count = 0
            for ingredient_whitelist in ingredients:
                ingredient_item_count += ingredient_whitelist.acceptable_items[0].count
            if ingredient_item_count > 9 or ingredient_item_count < 1:
                raise ValueError(f"Unable to decode recipe JSON: expected a total count for ingredient items of 1 to 9 in list for key '{root_path}ingredients' (found: '{ingredient_item_count}')")
            for i in range(0, len(ingredients)):
                for k in range(0, len(ingredients)):
                    if i != k and ingredients[i].do_items_overlap(ingredients[k]):
                        raise ValueError(f"Unable to decode recipe JSON: found duplicate item in list for key '{root_path}ingredients' (found: '{root_path}ingredients[{i}]' and '{root_path}ingredients[{i}]')")


            return ShapelessRecipe(ingredients, result)
        

        else:
            assert False, f"Recieved unhandled recipe type '{recipe_type}'!"
        
# Type definition for the patterns of shaped forge recipes.
ShapedPattern = 'list[list[Union[str,IngredientWhitelist]]'

@dataclass
class ShapedRecipe(Recipe):
    ''' Represents a shaped combustion forge recipe. '''
    pattern: ShapedPattern
    # Maps the letters from the pattern a item whitelist.
    item_keys: 'list[dict[str, IngredientWhitelist]]'

    def __init__( self, pattern: ShapedPattern
                , item_keys: 'list[dict[str, IngredientWhitelist]]'
                , result: Item):
        super().__init__(RecipeType.COMBUSTION_FORGE_SHAPED, result)
        self.pattern = pattern
        self.item_keys = item_keys
        
@dataclass
class ShapelessRecipe(Recipe):
    type = RecipeType.COMBUSTION_FORGE_SHAPELESS
    ''' Represents a shapeless combustion forge recipe. '''
    ingredients: 'list[IngredientWhitelist]'

    def __init__(self,  ingredients: 'list[IngredientWhitelist]', result: Item):
        super().__init__(RecipeType.COMBUSTION_FORGE_SHAPELESS, result)
        self.ingredients = ingredients



def decode_shaped_recipe_pattern(recipe: ShapedRecipe) -> ShapedPattern:
    ''' Replaces the letter placeholders in the recipe pattern with the items
        they map to and returns the decoded pattern. '''
    decoded_pattern = []
    
    for row in recipe.pattern:
        decoded_row = []
        for key in row:
            if key == ' ':
                decoded_row.append(empty_whitelist)
            else:
                decoded_row.append(recipe.item_keys[key])

        decoded_pattern.append(decoded_row)

    return decoded_pattern

def create_pattern_arrangments(decoded_pattern: ShapedPattern) -> 'list[ShapedPattern]':
    ''' Creates a list of all possible arrangements of the given pattern, 
        filling in empty spaces with air. '''
    height, width = len(decoded_pattern), len(decoded_pattern[0])
    empty_vertical_spaces, empty_horizontal_spaces = 3 - height, 3 - width

    pattern_arrangements = [] 

    # Generates every possible arrangement of the pattern by shifting it through
    #   the crafting grid.
    for delta_y in range(0, empty_vertical_spaces + 1):
        for delta_x in range(0, empty_horizontal_spaces + 1):
            shifted_pattern = deepcopy(decoded_pattern)

            # Fills in empty spots of pattern with air.
            for row in range(0, height):
               shifted_pattern[row] = [empty_whitelist] * delta_x + shifted_pattern[row] + [empty_whitelist] * (empty_horizontal_spaces - delta_x)
            shifted_pattern = [[empty_whitelist,empty_whitelist,empty_whitelist]] * (empty_vertical_spaces - delta_y) + shifted_pattern + [[empty_whitelist,empty_whitelist,empty_whitelist]] * delta_y

            pattern_arrangements.append(shifted_pattern)

    return pattern_arrangements

def write_shaped_recipe_mcfunction_code(output_file: TextIOWrapper, recipe_function_id: str, recipe: ShapedRecipe):
    ''' Writes out the code for the given shaped recipe. '''
    output_file.writelines([ '################################################################################\n'
                           , '# AUTOGENERATED FILE - DO NOT EDIT.                                            #\n'
                           , '# CHANGES WILL BE OVERWRITTEN.                                                 #\n'
                           , '################################################################################\n'
                           , '\n'
                           , '##\n'
                           , '# A compiled shaped recipe for the combustion forge, generated using\n'
                           , '#   {PROJECT_DIR}/combustion_forge_recipes/compile_recipes.py\n'
                           , '#\n'
                           , '# Tests for the recipe pattern in each possible arrangement. If found, the item\n'
                           , '#   will be crafted up to 16 times, consuming the required ingredients and\n'
                           , '#   producing the item as an entity inside the forge.\n'
                           , '#\n'
                           , '# Parameters:\n'
                           , '#   @s - the combustion forge core.\n'
                           , '#   Location - at @s\n'
                           , f'#   _items_crafted (scoreboard: {variable_storage_scoreboard}) - Initialize to 0. Keeps track of the\n'
                           , '#        number of items crafted to stop when the limit per combustion forge\n'
                           , '#        operation is reached.\n'
                           , f'#   _found_recipe (scoreboard: {variable_storage_scoreboard}) - Initialize to 0. Used to skip further\n'
                           , '#        recipes once one has been found.\n'
                           , '#\n'
                           , '# Returns:\n'
                           , f'#   _items_crafted (scoreboard: {variable_storage_scoreboard}) - the number of items crafted.\n'
                           , f'#   _found_recipe (scoreboard: {variable_storage_scoreboard}) - whether a recipe was found.\n'
                           , f'#   _valid_ingredient_count (scoreboard: {variable_storage_scoreboard}) - temporary variable\n'
                           , '#        used in recipe functions. Please reset.\n'
                           , '#\n'
                           , '\n'])
    
    # Combustion forge can make up to 16 items.
    output_file.write(f'execute if score _items_crafted {variable_storage_scoreboard} matches 16.. run return 0\n')
    # If we already found the recipe the forge contains we don't need to try any
    #   other ones.
    output_file.write(f'execute if score _found_recipe {variable_storage_scoreboard} matches 1 run return 0\n')
    output_file.write('\n\n\n')

    
    pattern_arrangements = create_pattern_arrangments(decode_shaped_recipe_pattern(recipe))

    
    result_item_tag_string = f',tag:{recipe.result.tag}' if recipe.result.tag else '' 

    pattern_number = 1
    # Writes code to test and craft each possible arrangement of the recipe on
    #   the crafting grid one by one.
    for pattern in pattern_arrangements:
        # Used to count number of valid ingredients to see if the recipe 
        #   is present in the grid.
        output_file.write(f'## Pattern {pattern_number}.\n')
        output_file.write(f'scoreboard players set _valid_ingredient_count {variable_storage_scoreboard} 0\n')

        # Tests if crafting pattern arrangement is present on the 
        #   crafting grid.
        for crafting_grid_z in range(-1, 2):
            for crafting_grid_x in range(-1, 2):
                output_file.write(f'# Item {(crafting_grid_x + 1) + (crafting_grid_z + 1) * 3 + 1}.\n')
                ingredient_items: IngredientWhitelist = pattern[crafting_grid_z + 1][crafting_grid_x + 1]

                if ingredient_items != empty_whitelist:
                    for ingredient_item in ingredient_items.acceptable_items:
                        item_tag_string = f',tag:{ingredient_item.tag}' if ingredient_item.tag else '' 

                        for ingredient_item_id in ingredient_item.ids:
                            output_file.write(f'execute if block ^{crafting_grid_x} ^1 ^{crafting_grid_z} minecraft:furnace{{Items:[{{Slot:0b,id:"{ingredient_item_id}"{item_tag_string}}}]}} run scoreboard players add _valid_ingredient_count {variable_storage_scoreboard} 1\n')
                else:
                    output_file.write(f'execute unless block ^{crafting_grid_x} ^1 ^{crafting_grid_z} minecraft:furnace{{Items:[{{Slot:0b}}]}} run scoreboard players add _valid_ingredient_count {variable_storage_scoreboard} 1\n')

        # If it is present, we can consume the ingredients,
        output_file.write('# Consume ingredients.\n')
        output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches 9 run function {decrement_crafting_grid_function_id}\n')
        #   produce the resulting item(s),
        output_file.write('# Create result.\n')
        output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches 9 run summon minecraft:item ~ ~ ~ {{Item:{{id:"{recipe.result.ids[0]}",Count:{recipe.result.count}b{result_item_tag_string}}}}}\n')
        output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches 9 run scoreboard players add _items_crafted {variable_storage_scoreboard} 1\n')
        #   and recursively run the recipe now that is has been found.
        output_file.write('# Recipe found, repeat until done.\n')
        output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches 9 run function {recipe_function_id}\n')
        output_file.write('\n\n\n')

        pattern_number += 1


    # If the item was able to be crafted, we mark that the recipe was found and
    #   skip the other recipes.
    output_file.write('# Mark that the recipe was found if it was able to be crafted.\n')
    output_file.write(f'execute if score _items_crafted {variable_storage_scoreboard} matches 1.. run scoreboard players set _found_recipe {variable_storage_scoreboard} 1\n')

def write_shapeless_recipe_mcfunction_code(output_file: TextIOWrapper, recipe_function_id: str, recipe: ShapelessRecipe):
    ''' Writes out the code for the given shapeless recipe. '''
    output_file.writelines([ '################################################################################\n'
                           , '# AUTOGENERATED FILE - DO NOT EDIT.                                            #\n'
                           , '# CHANGES WILL BE OVERWRITTEN.                                                 #\n'
                           , '################################################################################\n'
                           , '\n'
                           , '##\n'
                           , '# A compiled shapeless recipe for the combustion forge, generated using\n'
                           , '#   {PROJECT_DIR}/combustion_forge_recipes/compile_recipes.py\n'
                           , '#\n'
                           , '# Counts the number of each ingredient to see if it matches the recipe. If\n'
                           , '#   matched, the item will be crafted up to 16 times, consuming the required\n'
                           , '#   ingredients and producing the item as an entity inside the forge.\n'
                           , '#\n'
                           , '# Parameters:\n'
                           , '#   @s - the combustion forge core.\n'
                           , '#   Location - at @s\n'
                           , f'#   _items_crafted (scoreboard: {variable_storage_scoreboard}) - Initialize to 0. Keeps track of the\n'
                           , '#        number of items crafted to stop when the limit per combustion forge\n'
                           , '#        operation is reached.\n'
                           , f'#   _found_recipe (scoreboard: {variable_storage_scoreboard}) - Initialize to 0. Used to skip further\n'
                           , '#        recipes once one has been found.\n'
                           , '#\n'
                           , '# Returns:\n'
                           , f'#   _items_crafted (scoreboard: {variable_storage_scoreboard}) - the number of items crafted.\n'
                           , f'#   _found_recipe (scoreboard: {variable_storage_scoreboard}) - whether a recipe was found.\n'
                           , f'#   _valid_ingredient_count (scoreboard: {variable_storage_scoreboard}) - temporary variable\n'
                           , '#        used in recipe functions. Please reset.\n'
                           , '#\n'
                           , '\n'])
    
    # Combustion forge can make up to 16 items.
    output_file.write(f'execute if score _items_crafted {variable_storage_scoreboard} matches 16.. run return 0\n')
    # If we already found the recipe the forge contains we don't need to try any
    #   other ones.
    output_file.write(f'execute if score _found_recipe {variable_storage_scoreboard} matches 1 run return 0\n')
    output_file.write('\n\n\n')


    empty_spaces = 9

    # Used to count number of valid ingredients to see if the recipe 
    #   is present in the grid.
    output_file.write(f'scoreboard players set _valid_ingredient_count {variable_storage_scoreboard} 0\n')
    output_file.write('\n')

    # Counts up ingredients to see if the correct amounts are present.
    for i in range(0, len(recipe.ingredients)):
        item_count_variable = f'_item_{i+1}_count'
        output_file.write(f'scoreboard players set {item_count_variable} {variable_storage_scoreboard} 0\n')

        ingredient_whitelist = recipe.ingredients[i]
        for ingredient in ingredient_whitelist.acceptable_items:
            item_tag_string = f',tag:{ingredient.tag}' if ingredient.tag else '' 

            for crafting_grid_z in range(-1, 2):
                for crafting_grid_x in range(-1, 2):
                    for item_id in ingredient.ids:
                        output_file.write(f'execute if block ^{crafting_grid_x} ^1 ^{crafting_grid_z} minecraft:furnace{{Items:[{{Slot:0b,id:"{item_id}"{item_tag_string}}}]}} run scoreboard players add {item_count_variable} {variable_storage_scoreboard} 1\n')

        output_file.write(f'execute if score {item_count_variable} {variable_storage_scoreboard} matches {ingredient.count} run scoreboard players add _valid_ingredient_count {variable_storage_scoreboard} 1\n')
        output_file.write(f'scoreboard players reset {item_count_variable} {variable_storage_scoreboard}\n')
        output_file.write('\n')

        empty_spaces -= ingredient.count

    # Counts up empty spaces to see if there are no items that don't belong.
    if empty_spaces > 0:
        output_file.write(f'scoreboard players set _empty_space_count {variable_storage_scoreboard} 0\n')

        for crafting_grid_z in range(-1, 2):
                for crafting_grid_x in range(-1, 2):
                    output_file.write(f'execute unless block ^{crafting_grid_x} ^1 ^{crafting_grid_z} minecraft:furnace{{Items:[{{Slot:0b}}]}} run scoreboard players add _empty_space_count {variable_storage_scoreboard} 1\n')

        output_file.write(f'execute if score _empty_space_count {variable_storage_scoreboard} matches {empty_spaces} run scoreboard players add _valid_ingredient_count {variable_storage_scoreboard} 1\n')
        output_file.write(f'scoreboard players reset _empty_space_count {variable_storage_scoreboard}\n')
        output_file.write('\n')


    required_valid_ingredient_count = len(recipe.ingredients) + (1 if empty_spaces > 0 else 0)
    result_item_tag_string = f',tag:{recipe.result.tag}' if recipe.result.tag else '' 

    output_file.write('\n\n')
    # If it is present, we can consume the ingredients,
    output_file.write('# Consume ingredients.\n')
    output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches {required_valid_ingredient_count} run function {decrement_crafting_grid_function_id}\n')
    #   produce the resulting item(s),
    output_file.write('# Create result.\n')
    output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches {required_valid_ingredient_count} run summon minecraft:item ~ ~ ~ {{Item:{{id:"{recipe.result.ids[0]}",Count:{recipe.result.count}b{result_item_tag_string}}}}}\n')
    output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches {required_valid_ingredient_count} run scoreboard players add _items_crafted {variable_storage_scoreboard} 1\n')
    #   and recursively run the recipe now that is has been found.
    output_file.write('# Recipe found, repeat until done.\n')
    output_file.write(f'execute if score _valid_ingredient_count {variable_storage_scoreboard} matches {required_valid_ingredient_count} run function {recipe_function_id}\n')
    output_file.write('\n\n\n')



    # If the item was able to be crafted, we mark that the recipe was found and
    #   skip the other recipes.
    output_file.write('# Mark that the recipe was found if it was able to be crafted.\n')
    output_file.write(f'execute if score _items_crafted {variable_storage_scoreboard} matches 1.. run scoreboard players set _found_recipe {variable_storage_scoreboard} 1\n')



def write_recipe_mcfunction_code(output_file_path: str, recipe_name: str, recipe_function_id: str, recipe_json: dict) -> bool:
    ''' Attempts to write the code for the given recipe to the specified output
        file and returns whether it succeded. '''
    os.makedirs(path.split(output_file_path)[0], exist_ok=True)

    try:
        recipe = Recipe.from_json(recipe_json)

        if recipe.type == RecipeType.COMBUSTION_FORGE_SHAPED:
            with open(output_file_path, 'w') as output_file:
                write_shaped_recipe_mcfunction_code(output_file, recipe_function_id, recipe)

            logging.info(f"Wrote shaped recipe '{recipe_name}' -> '{path.abspath(output_file_path)}'")

        elif recipe.type == RecipeType.COMBUSTION_FORGE_SHAPELESS:
            with open(output_file_path, 'w') as output_file:
                write_shapeless_recipe_mcfunction_code(output_file, recipe_function_id, recipe)

            logging.info(f"Wrote shapedless recipe '{recipe_name}' -> '{path.abspath(output_file_path)}'")

        else:
            assert False, f"Recieved unhandled recipe type '{recipe.type}' from JSON decoder!"
        
        return True
    
    except ValueError as error:
        logging.error(f"{error}. Skipped writing recipe '{recipe_name}' -> '{path.abspath(output_file_path)}'")
        return False

def write_recipe_function_tag_json(output_file_path: str, recipe_function_ids: 'list[str]'):
    ''' Writes out the recipe function ids into a tag so they can all be called
        by the combustion forge crafting system. '''
    with open(output_file_path, 'w') as output_file:
        output_file.write('{\n')
        output_file.write('\t"values": [\n')

        if len(recipe_function_ids) > 0:
            for i in range(0, len(recipe_function_ids) - 1):
                output_file.write(f'\t\t"{recipe_function_ids[i]}",\n')
            output_file.write(f'\t\t"{recipe_function_ids[-1]}"\n')

        output_file.write('\t]\n')
        output_file.write('}\n')

        logging.info(f'Wrote out recipe function ids into tag json file -> {path.abspath(output_file_path)}')


def main():
    logging.getLogger().setLevel(logging_level)


    # Changing directory into the recipe directory makes messing with the recipe
    #   file paths 1 million times easier.
    os.chdir(combustion_forge_recipe_directory)

    # Used to verify recipe. If an error occurs we can just let this crash.
    with open(recipe_schema_file_path, 'rb') as recipe_schema_byte_stream:
        recipe_schema = json.loads(recipe_schema_byte_stream.read())

    recipe_file_paths = glob(r'**/*.json', recursive=True)
    if not recipe_file_paths:
        logging.info(f"Did not find any recipe files to compile in '{combustion_forge_recipe_directory}'. Aborting!")
        return
    else:
        logging.info(f"Found the following recipe files to compile in '{combustion_forge_recipe_directory}':")
        for recipe_file_path in recipe_file_paths:
            logging.info(f" - {recipe_file_path}")
        logging.info("Beggining compilation.")


    recipe_function_ids = []
    os.makedirs(recipe_output_directory, exist_ok=True)

    for recipe_file_path in recipe_file_paths:
        recipe_directory_path, recipe_file_name = path.split(recipe_file_path)
        recipe_name = recipe_file_name.replace('.json', '')
        recipe_function_id = recipe_function_directory_id + path.join(recipe_directory_path, recipe_name)

        output_file_path = path.join(recipe_output_directory, recipe_directory_path, recipe_name + '.mcfunction')

        with open(recipe_file_path, 'rb') as recipe_byte_stream:
            try:
                recipe_json = json.loads(recipe_byte_stream.read())
                jsonschema.validate(recipe_json, recipe_schema)

                wrote_file = write_recipe_mcfunction_code(output_file_path, recipe_name, recipe_function_id, recipe_json)
                if wrote_file:
                    recipe_function_ids.append(recipe_function_id)

            except json.JSONDecodeError as error:
                logging.error(f"Unable to decode recipe JSON: {error}. Skipped writing recipe '{recipe_name}' -> '{path.abspath(output_file_path)}'")
            except jsonschema.ValidationError as error:
                logging.error(f"Unable to decode recipe JSON: view the following error message. Skipped writing recipe '{recipe_name}' -> '{path.abspath(output_file_path)}'")
                logging.error(error)

    if recipe_function_ids:
        os.makedirs(path.split(recipe_function_tag_file_path)[0], exist_ok=True)
        write_recipe_function_tag_json(recipe_function_tag_file_path, recipe_function_ids)
    else:
        logging.error(f"Could not write out recipe function ids into tag json file at '{path.abspath(output_file_path)}': no recipes successfully compiled")

if __name__ == '__main__':
    main()