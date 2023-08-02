##
# Gets the rotation vector of an entity.
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Parameters:
#   @s - the entity.
#
# Returns:
#   Vector register 1 - the rotation vector of the entity.
#

function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/swap

execute positioned ^ ^ ^1 summon minecraft:armor_stand run function xplsvtlts:vector3d/get_postion_and_kill

function xplsvtlts:vector3d/subtract

