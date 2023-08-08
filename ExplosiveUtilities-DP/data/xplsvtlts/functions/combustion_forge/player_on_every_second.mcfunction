##
# Runs once every second on players.
#
# Parameters:
#   @s - the player.
#   Locations - at @s.
#

# Allows players to pick up combustion forge cores (as long as it is not 
#   completed).
execute if entity @s[predicate=xplsvtlts:entity/is_shifting,tag=!xplsvtlts_was_valid_structure] as @e[predicate=xplsvtlts:entity/is_combustion_forge_core,distance=..2] run function xplsvtlts:combustion_forge/_pickup_core 