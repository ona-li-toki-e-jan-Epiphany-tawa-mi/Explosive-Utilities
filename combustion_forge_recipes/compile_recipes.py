#!/usr/bin/env python3

import glob
import json
import copy
import os 

################################################################################
# CONFIG START                                                                 #
################################################################################
# Where the uncompiled combustion forge recipes are located. Relative path from
#   the prject directory.
combustion_forge_recipe_folder = r'combustion_forge_recipes/recipes/'
# Where to output the compiled recipes to. Relative path from 
#   combustion_forge_recipe_folder.
recipe_output_folder = r'../../ExplosiveUtilities-DP/data/xplsvtlts/functions/combustion_forge/recipes/generated/'
################################################################################
# CONFIG END                                                                   #
################################################################################



# The item form of air, used to fill the empty spaces of shaped patterns.
item_air = { r"item": r"minecraft:air" }



def decode_shaped_recipe_pattern(recipe_json):
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

def create_pattern_arrangments(decoded_pattern: 'list[list]'):
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
            shifted_pattern = copy.deepcopy(decoded_pattern)

            # Fills in empty spots of pattern with air.
            for row in range(0, height):
               shifted_pattern[row] = [item_air] * delta_x + shifted_pattern[row] + [item_air] * (empty_horizontal_spaces - delta_x)
            shifted_pattern = [[item_air,item_air,item_air]] * (empty_vertical_spaces - delta_y) + shifted_pattern + [[item_air,item_air,item_air]] * delta_y

            pattern_arrangements.append(shifted_pattern)

    return pattern_arrangements



def write_recipe_mcfunction_code(output_file_path, recipe_json):
    split_file_path = output_file_path.split('/')
    
    recipe_checker_file_path = '/'.join(split_file_path[:-1]) + r'/try_craft_' + split_file_path[-1]
    item_crafter_file_name = r'/craft_' + split_file_path[-1]
    item_crafter_file_path = '/'.join(split_file_path[:-1]) + item_crafter_file_name



    # TODO find a way to make this work with tags. 
    pattern_arrangements = create_pattern_arrangments(decode_shaped_recipe_pattern(recipe_json))   

    with open(recipe_checker_file_path, 'w') as recipe_file:
        for pattern in pattern_arrangements:
            recipe_file.write('scoreboard players set _valid_ingredient_count xplsvtlts 0\n')

            for crafting_grid_z in range(-1, 2):
                for crafting_grid_x in range(-1, 2):
                    item_data = pattern[crafting_grid_z + 1][crafting_grid_x + 1]

                    recipe_file.write(f'execute if block ^{crafting_grid_x} ^1 ^{crafting_grid_z} minecraft:furnace{{Items:[{{Slot:0b,id:"{item_data["item"]},tag:{item_data.get("nbt", "{}")}"}}]}} run scoreboard players add _valid_ingredient_count xplsvtlts 1\n')

            recipe_file.write(f'execute if score _valid_ingredient_count xplsvtlts matches 9 run function xplsvtlts:combustion_forge/recipes/generated/\n')
            recipe_file.write('\n')

        recipe_file.write('scoreboard players reset _valid_ingredient_count xplsvtlts\n')



    with open(item_crafter_file_path, 'w') as crafting_file:
        result_item_data = recipe_json["result"]
            
        for crafting_grid_z in range(-1, 2):
            for crafting_grid_x in range(-1, 2):
                crafting_file.write(f'item modify block ^{crafting_grid_x} ^ ^{crafting_grid_z} container.0 xplsvtlts:decrement_stack\n')
        
        crafting_file.write('\n')
        crafting_file.write(f'summon minecraft:item ~ ~ ~ {{Item:{{id:"{result_item_data["item"]}",Count:{result_item_data.get("count", "1")}b,tag:{result_item_data.get("nbt", "{}",)}}}}}')

        





def main():
    os.chdir(combustion_forge_recipe_folder)
    recipe_files = glob.glob(r'**.json', recursive=True)

    os.makedirs(recipe_output_folder, exist_ok=True)

    for recipe_file in recipe_files:
        with open(recipe_file, 'rb') as recipe_stream:
            # TODO replace file ending with .mcfunction
            write_recipe_mcfunction_code(recipe_output_folder + recipe_file.replace(".json", ".mcfunction"), json.loads(recipe_stream.read()))

if __name__ == '__main__':
    main()