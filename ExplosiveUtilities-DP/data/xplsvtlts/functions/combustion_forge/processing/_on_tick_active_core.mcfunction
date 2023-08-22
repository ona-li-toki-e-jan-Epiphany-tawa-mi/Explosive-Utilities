##
# Runs once every tick for active combustion forges.
#
# Parameters: 
#   @s - the combustion forge core.
#   Location - at @s.
#

scoreboard players add @s xplsvtlts_combustion_forge_runtime 1

execute if score @s xplsvtlts_combustion_forge_runtime matches 30 run playsound minecraft:block.anvil.land block @a ~ ~ ~ 2.0 0.8
execute if score @s xplsvtlts_combustion_forge_runtime matches 60 run playsound minecraft:block.anvil.land block @a ~ ~ ~ 2.0 0.7
execute if score @s xplsvtlts_combustion_forge_runtime matches 90 run playsound minecraft:block.anvil.land block @a ~ ~ ~ 2.0 0.6
execute if score @s xplsvtlts_combustion_forge_runtime matches ..120 run function xplsvtlts:combustion_forge/processing/_play_processing_sound

# Redstone I/O to indicate the machine is done processing.
execute if score @s xplsvtlts_combustion_forge_runtime matches 120 positioned ^1 ^-1 ^-1 if block ~ ~ ~ minecraft:target run setblock ~ ~ ~ minecraft:target[power=15]

# Once the door opens, the machine stops, finished or not with processing.
# Won't run if there is a block in the core to prevent overwriting it, the 
#   structural validator will catch the issue later on.
execute if block ^ ^ ^1 minecraft:iron_trapdoor[powered=false] if block ~ ~ ~ #minecraft:replaceable run function xplsvtlts:combustion_forge/processing/_deactivate