##
# Gets the location of the command context (~ ~ ~) as a vector.
# Note: scales input by 70 to capture the decimal component of the number.
#
# Parameters:
#   Location - the location to get as a vector.
#
# Returns:
#   Vector register 1 - the location as a vector.
#

execute summon minecraft:armor_stand run function xplsvtlts:vector3d/get_postion_and_kill