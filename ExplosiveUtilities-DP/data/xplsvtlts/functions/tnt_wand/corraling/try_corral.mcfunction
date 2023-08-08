##
# Attempts to corral entities compatible with the tnt wand around the given
#   location.
#
# Parameters:
#   @s - the player using the tnt wand.
#   Location - where to corral.
#
# Returns:
#   _corraled_tnt (scoreboard: xplsvtlts) - 1 if any entities were corraled, 0
#       otherwise.
#

scoreboard players set _corraled_tnt xplsvtlts 0
function xplsvtlts:vector3d/get_location_as_vector
function xplsvtlts:vector3d/store/3

execute unless predicate xplsvtlts:entity/tnt_wand/whatawawtawtaw store success score _corraled_tnt xplsvtlts run execute as @e[distance=..5,predicate=xplsvtlts:entity/tnt_wand/can_be_corraled] run function xplsvtlts:tnt_wand/corraling/_corral_entity
execute if predicate xplsvtlts:entity/tnt_wand/whatawawtawtaw store success score _corraled_tnt xplsvtlts run execute as @e[distance=..5,type=!minecraft:player,predicate=!xplsvtlts:entity/is_ignorable_no_items] run function xplsvtlts:tnt_wand/corraling/_corral_entity