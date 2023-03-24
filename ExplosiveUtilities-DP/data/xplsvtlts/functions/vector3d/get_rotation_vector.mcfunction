##
# Gets the rotation vector of an entity and stores it in the first vector.
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Needs to be called with @s being the entity.
#

function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/swap

# Note: if we need to use 1.19.4+ exclusively, use execute summon instead.
execute positioned ^ ^ ^1 summon minecraft:armor_stand run function xplsvtlts:vector3d/get_postion_and_kill

function xplsvtlts:vector3d/subtract

