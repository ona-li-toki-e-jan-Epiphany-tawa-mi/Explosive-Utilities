##
# Gets the position of an entity at their eyes and stores it in the first vector.
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Needs to be called with @s being the entity.
#

execute anchored eyes positioned ^ ^ ^ summon minecraft:armor_stand run function xplsvtlts:vector3d/get_postion_and_kill