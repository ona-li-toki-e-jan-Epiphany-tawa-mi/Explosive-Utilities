##
# Runs once every second on players.
#
# Parameters:
#   @s - the player.
#   Locations - at @s.
#

# Allows players to pick up pistol kiln cores (as long as it is not completed).
execute if entity @s[predicate=xplsvtlts:entity/is_shifting] as @e[predicate=xplsvtlts:entity/is_pistol_kiln_core,distance=..2,tag=!xplsvtlts_was_valid_structure] run function xplsvtlts:pistol_kiln/_pickup_core 