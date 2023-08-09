##
# Runs every second while valid, but inactive, combustion forge cores exist.
# Needs to be kickstarted when a forge's structure has been validated.
#

scoreboard players set _exists_inactive_cores xplsvtlts 0
execute store success score _exists_inactive_cores xplsvtlts run execute as @e[predicate=xplsvtlts:entity/is_combustion_forge_core,tag=xplsvtlts_was_valid_structure,tag=!xplsvtlts_is_running] at @s run function xplsvtlts:combustion_forge/ideling/_on_tick_inactive_core

execute if score _exists_inactive_cores xplsvtlts matches 1 run schedule function xplsvtlts:combustion_forge/ideling/tick_inactive_cores 1s

scoreboard players reset _exists_inactive_cores xplsvtlts
