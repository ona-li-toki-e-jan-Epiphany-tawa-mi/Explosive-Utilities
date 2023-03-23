##
# Gets the position of an entity and stores it in the first vector.
# Kills the entity after words, meant for markers.
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Needs to be called with @s being the entity.
#

function xplsvtlts:vector3d/get_positon
kill @s