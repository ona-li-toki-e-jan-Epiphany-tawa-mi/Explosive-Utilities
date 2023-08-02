##
# Adds two vectors together.
#
# Parameters:
#   Vector register 1 - the first vector.
#   Vector register 2 - the second vector.
#
# Returns:
#   Vector register 1 - the new summed vector.
#

scoreboard players operation _x1 xplsvtlts += _x2 xplsvtlts
scoreboard players operation _y1 xplsvtlts += _y2 xplsvtlts
scoreboard players operation _z1 xplsvtlts += _z2 xplsvtlts