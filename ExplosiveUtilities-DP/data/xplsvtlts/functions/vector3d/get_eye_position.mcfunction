##
# Gets the position of an entity at their eyes and stores it in the first 
#   vector.
# Note: scales input by 70 to capture the decimal component of the number.
#
# Parameters:
#   @s - the entity.
#
# Returns:
#   Vector register 1 - the position of the entity at their eyes.
#

execute anchored eyes positioned ^ ^ ^ summon minecraft:armor_stand run function xplsvtlts:vector3d/get_postion_and_kill