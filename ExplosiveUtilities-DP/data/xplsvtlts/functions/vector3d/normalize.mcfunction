##
# Normalizes the given vector.
#
# Parameters:
#   Vector register 1 - the vector to normalize.
#
# Returns:
#   Vector register 1 - the normalized vector.
#

function xplsvtlts:vector3d/get_magnitude

# The magnitude is 70 times what it should be because we need to capture the 
#   decimal component, so we need to multiply the vector by 70 to cancel it out.
scoreboard players set _scalar xplsvtlts 70
function xplsvtlts:vector3d/scalar_multiply

scoreboard players operation _x1 xplsvtlts /= _magnitude xplsvtlts
scoreboard players operation _y1 xplsvtlts /= _magnitude xplsvtlts
scoreboard players operation _z1 xplsvtlts /= _magnitude xplsvtlts

scoreboard players reset _magnitude xplsvtlts
scoreboard players reset _scalar