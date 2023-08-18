##
# Tests if a combustion forge multiblock is valid and complete.
#
# Parameters: 
#   @s - the combustion forge core.
#   Location - at @s.
#
# Returns:
#   execute result - 1 if valid, else 0.
#

execute positioned ^1 ^-0.75 ^1 unless block ~ ~ ~ minecraft:obsidian run return 0
execute positioned ^ ^-0.75 ^1 unless block ~ ~ ~ minecraft:obsidian run return 0
execute positioned ^-1 ^-0.75 ^1 unless block ~ ~ ~ minecraft:obsidian run return 0

execute positioned ^1 ^-0.75 ^ unless block ~ ~ ~ minecraft:obsidian run return 0
execute positioned ^ ^-0.75 ^ unless block ~ ~ ~ minecraft:obsidian run return 0
execute positioned ^-1 ^-0.75 ^ unless block ~ ~ ~ minecraft:obsidian run return 0

execute positioned ^1 ^-0.75 ^-1 unless block ~ ~ ~ minecraft:target run return 0
execute positioned ^ ^-0.75 ^-1 unless block ~ ~ ~ minecraft:obsidian run return 0
execute positioned ^-1 ^-0.75 ^-1 unless block ~ ~ ~ minecraft:target run return 0



execute positioned ^1 ^0.25 ^1 unless block ~ ~ ~ minecraft:obsidian run return 0
execute if entity @s[y_rotation=-95.0..-85.0] positioned ^ ^0.25 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=top] run return 0
execute if entity @s[y_rotation=85.0..95.0] positioned ^ ^0.25 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=top] run return 0
execute if entity @s[y_rotation=-5.0..5.0] positioned ^ ^0.25 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=top] run return 0
execute if entity @s[y_rotation=175.0..185.0] positioned ^ ^0.25 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=top] run return 0
execute positioned ^-1 ^0.25 ^1 unless block ~ ~ ~ minecraft:obsidian run return 0

execute positioned ^1 ^0.25 ^ unless block ~ ~ ~ minecraft:obsidian run return 0
execute positioned ^ ^0.25 ^ unless block ~ ~ ~ #minecraft:replaceable run return 0
execute positioned ^-1 ^0.25 ^ unless block ~ ~ ~ minecraft:obsidian run return 0

execute positioned ^1 ^0.25 ^-1 unless block ~ ~ ~ minecraft:obsidian run return 0
execute if entity @s[y_rotation=-95.0..-85.0] positioned ^ ^0.25 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=east] run return 0
execute if entity @s[y_rotation=85.0..95.0] positioned ^ ^0.25 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=west] run return 0
execute if entity @s[y_rotation=-5.0..5.0] positioned ^ ^0.25 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=south] run return 0
execute if entity @s[y_rotation=175.0..185.0] positioned ^ ^0.25 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=north] run return 0
execute positioned ^-1 ^0.25 ^-1 unless block ~ ~ ~ minecraft:obsidian run return 0



execute positioned ^1 ^1.25 ^1 unless block ~ ~ ~ minecraft:furnace run return 0
execute positioned ^ ^1.25 ^1 unless block ~ ~ ~ minecraft:furnace run return 0
execute positioned ^-1 ^1.25 ^1 unless block ~ ~ ~ minecraft:furnace run return 0

execute positioned ^1 ^1.25 ^ unless block ~ ~ ~ minecraft:furnace run return 0
execute positioned ^ ^1.25 ^ unless block ~ ~ ~ minecraft:furnace run return 0
execute positioned ^-1 ^1.25 ^ unless block ~ ~ ~ minecraft:furnace run return 0

execute positioned ^1 ^1.25 ^-1 unless block ~ ~ ~ minecraft:furnace run return 0
execute positioned ^ ^1.25 ^-1 unless block ~ ~ ~ minecraft:furnace run return 0
execute positioned ^-1 ^1.25 ^-1 unless block ~ ~ ~ minecraft:furnace run return 0



return 1