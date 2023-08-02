##
# Multiplies the given vector by a scalar.
#
# Parameters:
#   Vector register 1 - the vector to multiply.
#   _scalar (scoreboard: xplsvtlts) - the scalar.
#
# Returns:
#   Vector register 1 - the resulting vector.
#

scoreboard players operation _x1 xplsvtlts *= _scalar xplsvtlts
scoreboard players operation _y1 xplsvtlts *= _scalar xplsvtlts
scoreboard players operation _z1 xplsvtlts *= _scalar xplsvtlts