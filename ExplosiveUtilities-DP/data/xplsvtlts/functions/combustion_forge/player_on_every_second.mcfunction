##
# Runs once every second on players.
#
# Parameters:
#   @s - the player.
#   Locations - at @s.
#

# Allows players to pick up core.
execute if entity @s[predicate=xplsvtlts:entity/is_shifting] as @e[predicate=xplsvtlts:entity/is_combustion_forge_core,distance=..2] run function xplsvtlts:combustion_forge/_pickup_core 