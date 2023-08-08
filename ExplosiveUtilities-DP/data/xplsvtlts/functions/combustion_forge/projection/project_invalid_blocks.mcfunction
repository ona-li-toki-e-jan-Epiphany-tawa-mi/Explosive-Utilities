##
# Projects a red border around invalid blocks in the combustion forge 
#   multiblock.
#
# Make sure to call the function xplsvtlts:combustion_forge/projection/cleanup
#   afterwards to remove the projection entities.
#
# Parameters: 
#   @s - the combustion forge core.
#   Location - at @s.
#

execute positioned ~ ~ ~ positioned ^1 ^-0.975 ^1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^ ^-0.975 ^1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^-0.975 ^1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}

execute positioned ~ ~ ~ positioned ^1 ^-0.975 ^ unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^ ^-0.975 ^ unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^-0.975 ^ unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}

execute positioned ~ ~ ~ positioned ^1 ^-0.975 ^-1 unless block ~ ~ ~ minecraft:target unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^ ^-0.975 ^-1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^-0.975 ^-1 unless block ~ ~ ~ minecraft:target unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}



execute positioned ~ ~ ~ positioned ^1 ^0.025 ^1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=-95.0..-85.0] positioned ~ ~ ~ positioned ^ ^0.025 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=top] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=85.0..95.0] positioned ~ ~ ~ positioned ^ ^0.025 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=top] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=-5.0..5.0] positioned ~ ~ ~ positioned ^ ^0.025 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=top] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=175.0..185.0] positioned ~ ~ ~ positioned ^ ^0.025 ^1 unless block ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=top] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^0.025 ^1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}

execute positioned ~ ~ ~ positioned ^1 ^0.025 ^ unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^0.025 ^ unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}

execute positioned ~ ~ ~ positioned ^1 ^0.025 ^-1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=-95.0..-85.0] positioned ~ ~ ~ positioned ^ ^0.025 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=east] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=85.0..95.0] positioned ~ ~ ~ positioned ^ ^0.025 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=west] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=-5.0..5.0] positioned ~ ~ ~ positioned ^ ^0.025 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=south] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute if entity @s[y_rotation=175.0..185.0] positioned ~ ~ ~ positioned ^ ^0.025 ^-1 unless block ~ ~ ~ minecraft:dispenser[facing=north] unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^0.025 ^-1 unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}



execute positioned ~ ~ ~ positioned ^1 ^1.025 ^1 unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^ ^1.025 ^1 unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^1.025 ^1 unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}

execute positioned ~ ~ ~ positioned ^1 ^1.025 ^ unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^ ^1.025 ^ unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^1.025 ^ unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}

execute positioned ~ ~ ~ positioned ^1 ^1.025 ^-1 unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^ ^1.025 ^-1 unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}
execute positioned ~ ~ ~ positioned ^-1 ^1.025 ^-1 unless block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ #replaceable run summon minecraft:block_display ~-0.525 ~ ~-0.525 {block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},Tags:["xplsvtlts_combustion_forge_projection"]}



return 1