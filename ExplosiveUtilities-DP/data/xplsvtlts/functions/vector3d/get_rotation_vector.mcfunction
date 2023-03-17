##
# Gets the rotation vector of an entity and stores it in the first vector.
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Needs to be called with @s being the entity.
#

function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/swap

# Note: if we need to use 1.19.4+ exclusively, use execute summon instead.
summon minecraft:armor_stand ^ ^ ^1 {Tags:["xplsvtlts_vector_math"], Marker:true, Invisible:true}
execute positioned ^ ^ ^1 as @e[type=minecraft:armor_stand,tag=xplsvtlts_vector_math,limit=1,sort=nearest] run function xplsvtlts:vector3d/get_positon

function xplsvtlts:vector3d/subtract

