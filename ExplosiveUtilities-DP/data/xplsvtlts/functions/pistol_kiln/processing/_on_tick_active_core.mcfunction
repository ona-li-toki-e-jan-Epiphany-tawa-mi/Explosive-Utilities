##
# Runs once every tick for active pistol kilns.
#
# Parameters: 
#   @s - the pistol kiln core.
#   Location - at @s.
#

# Determines whether the kiln should progress or reverse based on if it has
#   enough fuel and something to smelt.
scoreboard players set _progress_direction xplsvtlts 1
execute unless block ~1 ~ ~ minecraft:blast_furnace{Items:[{Slot:0b}]} unless block ~-1 ~ ~ minecraft:blast_furnace{Items:[{Slot:0b}]} unless block ~ ~ ~1 minecraft:blast_furnace{Items:[{Slot:0b}]} unless block ~ ~ ~-1 minecraft:blast_furnace{Items:[{Slot:0b}]} run scoreboard players set _progress_direction xplsvtlts -1
scoreboard players operation @s xplsvtlts_pistol_kiln_runtime += _progress_direction xplsvtlts

# A/v effects.
execute if score _progress_direction xplsvtlts matches 1 run function xplsvtlts:pistol_kiln/processing/_play_processing_sound
# Hella smog baby!
execute if score _progress_direction xplsvtlts matches 1 run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 0.1 2

execute if score @s xplsvtlts_pistol_kiln_runtime matches ..0 run function xplsvtlts:pistol_kiln/processing/_mark_inactive
execute if score @s xplsvtlts_pistol_kiln_runtime matches 9000.. run function xplsvtlts:pistol_kiln/processing/_deactivate 



scoreboard players reset _progress_direction xplsvtlts