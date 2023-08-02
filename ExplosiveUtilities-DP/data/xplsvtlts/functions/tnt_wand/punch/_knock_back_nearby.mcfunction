##
# Applies explosive punch knockback to all nearby entities and kills the marker
#   afterwards.
#
# Parameters:
#   @s - the marker.
#   Location - at @s.
#

function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/store/3
# Can't apply motion to players.
execute as @e[type=!minecraft:player,tag=!xplsvtlts_punch_knockback_marker,distance=..7] at @s run function xplsvtlts:tnt_wand/punch/_knock_back

function xplsvtlts:vector3d/reset_memory
kill @s