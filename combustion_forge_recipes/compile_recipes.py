#!/usr/bin/env python3

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

################################################################################
# CONFIG START                                                                 #
################################################################################
# Where the uncompiled combustion forge recipes are located. Relative path from
#   the prject directory.
combustion_forge_recipe_directory = r'combustion_forge_recipes/recipes/'
# Where to output the compiled recipes to. Relative path from 
#   {combustion_forge_recipe_directory}.
recipe_output_directory = r'../../ExplosiveUtilities-DP/data/xplsvtlts/functions/combustion_forge/recipes/generated/'
# The id for the function that decrements each slot of the combustion forge's
#   crafting grid.
decrement_crafting_grid_function_id = r'xplsvtlts:combustion_forge/recipes/decrement_crafting_grid'
################################################################################
# CONFIG END                                                                   #
################################################################################



import json
import os
from copy import deepcopy
from glob import glob
from io import TextIOWrapper



# Basic type definition for minecraft items.
Item = dict
# Type definition for the patterns of shaped forge recipes.
ShapedPattern = 'list[list[Item]]'

# The item form of air, used to fill the empty spaces of shaped patterns.
item_air: Item = { r"item": r"minecraft:air" }



def decode_shaped_recipe_pattern(recipe_json: object) -> ShapedPattern:
    ''' Replaces the letter placeholders in the recipe pattern with the items
        they map to and returns the decoded pattern. '''
    item_keys = recipe_json["key"]
    decoded_pattern = []

    for row in recipe_json["pattern"]:
        decoded_row = []
        for key in row:
            decoded_row.append(item_keys[key])

        decoded_pattern.append(decoded_row)

    return decoded_pattern

def create_pattern_arrangments(decoded_pattern: ShapedPattern) -> 'list[ShapedPattern]':
    ''' Creates a list of all possible arrangements of the given pattern, 
        filling in empty spaces with air. '''
    height = len(decoded_pattern)
    width = len(decoded_pattern[0])
    empty_vertical_spaces = 3 - height
    empty_horizontal_spaces = 3 - width

    pattern_arrangements = [] 

    # Generates every possible arrangement of the pattern by shifting it through
    #   the crafting grid.
    for delta_y in range(0, empty_vertical_spaces + 1):
        for delta_x in range(0, empty_horizontal_spaces + 1):
            shifted_pattern = deepcopy(decoded_pattern)

            # Fills in empty spots of pattern with air.
            for row in range(0, height):
               shifted_pattern[row] = [item_air] * delta_x + shifted_pattern[row] + [item_air] * (empty_horizontal_spaces - delta_x)
            shifted_pattern = [[item_air,item_air,item_air]] * (empty_vertical_spaces - delta_y) + shifted_pattern + [[item_air,item_air,item_air]] * delta_y

            pattern_arrangements.append(shifted_pattern)

    return pattern_arrangements

def write_shaped_recipe_mcfunction_code(output_file: TextIOWrapper, recipe_json: object):
    ''' Writes out the code for the given shaped recipe. '''
    # TODO find a way to make this work with item tags (or just say fuck it and use a list of item IDs.)
    # TODO Fix issue with item nbt data coming out malformed in ouputted files.
    pattern_arrangements = create_pattern_arrangments(decode_shaped_recipe_pattern(recipe_json))

    result_item_data = recipe_json["result"]
    result_item_id = result_item_data["item"]
    result_item_count = result_item_data.get("count", 1)
    result_item_tag_string = f',tag:{result_item_data["nbt"]}' if result_item_data.get("nbt") is not None else '' 

    # Writes code to test and craft each possible arrangement of the recipe on
    #   the crafting grid one by one.
    for pattern in pattern_arrangements:
        # Used to count number of valid ingredients to see if the recipe 
        #   is present in the grid.
        output_file.write('scoreboard players set _valid_ingredient_count xplsvtlts 0\n')

        # Tests if crafting pattern arrangement is present on the 
        #   crafting grid.
        for crafting_grid_z in range(-1, 2):
            for crafting_grid_x in range(-1, 2):
                ingredient_item_data = pattern[crafting_grid_z + 1][crafting_grid_x + 1]
                ingredient_item_id = ingredient_item_data["item"]
                item_tag_string = f',tag:{ingredient_item_data["nbt"]}' if ingredient_item_data.get("nbt") is not None else '' 

                output_file.write(f'execute if block ^{crafting_grid_x} ^1 ^{crafting_grid_z} minecraft:furnace{{Items:[{{Slot:0b,id:"{ingredient_item_id}"{item_tag_string}}}]}} run scoreboard players add _valid_ingredient_count xplsvtlts 1\n')

        output_file.write('\n')
        # If it is present, we can consume the ingredients,
        output_file.write(f'execute if score _valid_ingredient_count xplsvtlts matches 9 run function {decrement_crafting_grid_function_id}\n')
        #   and produce the resulting item(s)
        output_file.write(f'execute if score _valid_ingredient_count xplsvtlts matches 9 run summon minecraft:item ~ ~ ~ {{Item:{{id:"{result_item_id}",Count:{result_item_count}b{result_item_tag_string}}}}}\n')
        output_file.write('\n\n\n')

    # Temporary variable cleanup.
    output_file.write('scoreboard players reset _valid_ingredient_count xplsvtlts\n')



def write_recipe_mcfunction_code(output_directory: str, recipe_name: str, recipe_json: object):
    ''' Attempts to write the code for the given recipe to the specified output
        file. '''
    output_file_path = output_directory + recipe_name + '.mcfunction'
    recipe_type = recipe_json["type"]

    if recipe_type == 'crafting_shaped':
        with open(output_file_path, 'w') as output_file:
            write_shaped_recipe_mcfunction_code(output_file, recipe_json)

    else:
        raise KeyError(f"'{recipe_type}' is not a supported recipe type! (recipe: {recipe_name})")

        

def main():
    os.chdir(combustion_forge_recipe_directory)
    recipe_file_paths = glob(r'**.json', recursive=True)

    os.makedirs(recipe_output_directory, exist_ok=True)

    # TODO Make path combining operations use os.path
    # TODO make JSON validator for recipes.
    # TODO Add shapeless recipes.
    for recipe_file_path in recipe_file_paths:
        with open(recipe_file_path, 'rb') as recipe_byte_stream:
            write_recipe_mcfunction_code( recipe_output_directory + '/'.join(recipe_file_path.split('/')[:-1]) + '/'
                                        , recipe_file_path.replace('.json', '')
                                        , json.loads(recipe_byte_stream.read()))

if __name__ == '__main__':
    main()