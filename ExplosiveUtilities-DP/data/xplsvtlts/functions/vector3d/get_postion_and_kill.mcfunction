##
# Gets the position of an entity as a vector and kills it afterwards, meant for
#   vectors.
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Parameters:
#   @s - the entity.
#
# Returns:
#   Vector register 1 - the position of the entity.
#

function xplsvtlts:vector3d/get_positon
kill @s