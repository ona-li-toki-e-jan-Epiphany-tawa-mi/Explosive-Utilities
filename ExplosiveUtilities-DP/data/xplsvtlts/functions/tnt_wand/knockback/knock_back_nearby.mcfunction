##
# Knocks back any entities near this knockback marker and then destorys it.
#
# Needs to be called with @s being the marker, located at @s.
#

function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/store/3
execute as @e[tag=!xplsvtlts_punch_knockback_marker,distance=..5] at @s run function xplsvtlts:tnt_wand/knockback/knock_back

kill @s
function xplsvtlts:vector3d/reset_memory