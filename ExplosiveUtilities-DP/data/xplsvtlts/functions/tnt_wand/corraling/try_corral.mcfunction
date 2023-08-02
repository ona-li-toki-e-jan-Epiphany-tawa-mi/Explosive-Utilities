##
# Attempts to corral entities compatible with the tnt wand around the given
#   location.
#
# Parameters:
#   Location - where to corral.
#
# Returns:
#   _corraled_tnt (scoreboard: xplsvtlts) - 1 if any entities were corraled, 0
#       otherwise.
#

scoreboard players set _corraled_tnt xplsvtlts 0
function xplsvtlts:vector3d/get_location_as_vector
function xplsvtlts:vector3d/store/3

execute as @e[distance=..5] run function xplsvtlts:tnt_wand/corraling/_try_corral_entity