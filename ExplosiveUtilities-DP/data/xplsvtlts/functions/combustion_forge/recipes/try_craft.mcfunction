##
# Attempts to craft up to 16 items using the ingridients specified in the
#   combustion forge's crafting grid, consuming those ingredients in the process
#   and outputting the results as item entities inside the combustion forge.
#
# Parameters:
#   @s - the combustion forge.
#   Location - at @s.
#

# Prevents running recipe functions if crafting grid is empty.
scoreboard players set _empty_slot_count xplsvtlts 0
execute unless block ^-1 ^1 ^-1 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^0 ^1 ^-1 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^1 ^1 ^-1 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^-1 ^1 ^0 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^0 ^1 ^0 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^1 ^1 ^0 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^-1 ^1 ^1 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^0 ^1 ^1 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1
execute unless block ^1 ^1 ^1 minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players add _empty_slot_count xplsvtlts 1



execute if score _empty_slot_count xplsvtlts matches ..8 run scoreboard players set _items_crafted xplsvtlts 0
execute if score _empty_slot_count xplsvtlts matches ..8 run scoreboard players set _found_recipe xplsvtlts 0

# See {PROJECT_DIR}/combustion_forge_recipes/ for adding more recipes to the
#   combustion forge.
execute if score _empty_slot_count xplsvtlts matches ..8 run function #xplsvtlts:combustion_forge_recipes/recipes

execute if score _empty_slot_count xplsvtlts matches ..8 run scoreboard players reset _items_crafted xplsvtlts
execute if score _empty_slot_count xplsvtlts matches ..8 run scoreboard players reset _found_recipe xplsvtlts



scoreboard players reset _empty_slot_count xplsvtlts