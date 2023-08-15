################################################################################
# AUTOGENERATED FILE - DO NOT EDIT.                                            #
# CHANGES WILL BE OVERWRITTEN.                                                 #
################################################################################

##
# A compiled shaped recipe for the combustion forge, generated using
#   {PROJECT_DIR}/combustion_forge_recipes/compile_recipes.py
#
# Tests for the recipe pattern in each possible arrangement. If found, the item
#   will be crafted up to 16 times, consuming the required ingredients and
#   producing the item as an entity inside the forge.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s
#   _items_crafted (scoreboard: xplsvtlts) - Initialize to 0. Keeps track of the
#        number of items crafted to stop when the limit per combustion forge
#        operation is reached.
#   _found_recipe (scoreboard: xplsvtlts) - Initialize to 0. Used to skip further
#        recipes once one has been found.
#
# Returns:
#   _items_crafted (scoreboard: xplsvtlts) - the number of items crafted.
#   _found_recipe (scoreboard: xplsvtlts) - whether a recipe was found.
#   _valid_ingredient_count (scoreboard: xplsvtlts) - temporary variable
#        used in recipe functions. Please reset.
#

execute if score _items_crafted xplsvtlts matches 16.. run return 0
execute if score _found_recipe xplsvtlts matches 1 run return 0



## Pattern 1.
scoreboard players set _valid_ingredient_count xplsvtlts 0
# Item 1.
execute if block ^-1 ^1 ^-1 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 2.
execute if block ^0 ^1 ^-1 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 3.
execute if block ^1 ^1 ^-1 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 4.
execute if block ^-1 ^1 ^0 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 5.
execute if block ^0 ^1 ^0 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 6.
execute if block ^1 ^1 ^0 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 7.
execute if block ^-1 ^1 ^1 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 8.
execute if block ^0 ^1 ^1 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Item 9.
execute if block ^1 ^1 ^1 minecraft:furnace{Items:[{Slot:0b,id:"minecraft:iron_nugget"}]} run scoreboard players add _valid_ingredient_count xplsvtlts 1
# Consume ingredients.
execute if score _valid_ingredient_count xplsvtlts matches 9 run function xplsvtlts:combustion_forge/recipes/decrement_crafting_grid
# Create result.
execute if score _valid_ingredient_count xplsvtlts matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute if score _valid_ingredient_count xplsvtlts matches 9 run scoreboard players add _items_crafted xplsvtlts 1
# Recipe found, repeat until done.
execute if score _valid_ingredient_count xplsvtlts matches 9 run function xplsvtlts:combustion_forge/recipes/generated/shaped/compression/iron_nugget_to_ingot



# Mark that the recipe was found if it was able to be crafted.
execute if score _items_crafted xplsvtlts matches 1.. run scoreboard players set _found_recipe xplsvtlts 1
