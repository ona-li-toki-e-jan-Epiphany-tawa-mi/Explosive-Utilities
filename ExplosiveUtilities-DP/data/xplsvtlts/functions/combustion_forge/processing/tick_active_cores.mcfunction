##
# Runs once every tick on valid, active combustion forges.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

scoreboard players set _exists_inactive_cores xplsvtlts 0
execute store success score _exists_inactive_cores xplsvtlts run execute as @e[predicate=xplsvtlts:entity/is_combustion_forge_core,tag=xplsvtlts_was_valid_structure,tag=xplsvtlts_is_running] at @s run function xplsvtlts:combustion_forge/processing/_on_tick_active_core

execute if score _exists_inactive_cores xplsvtlts matches 1 run schedule function xplsvtlts:combustion_forge/processing/tick_active_cores 1t

scoreboard players reset _exists_inactive_cores xplsvtlts