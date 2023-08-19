##
# Runs every second while valid, active pistol kiln cores exist.
# Needs to be kickstarted when a kiln's structure has been validated.
#

scoreboard players set _exists_active_cores xplsvtlts 0
execute store success score _exists_active_cores xplsvtlts run execute as @e[predicate=xplsvtlts:entity/is_pistol_kiln_core,tag=xplsvtlts_was_valid_structure,tag=xplsvtlts_is_running] at @s run function xplsvtlts:pistol_kiln/processing/_on_tick_active_core

execute if score _exists_active_cores xplsvtlts matches 1 run schedule function xplsvtlts:pistol_kiln/processing/tick_active_cores 1t

scoreboard players reset _exists_active_cores xplsvtlts