## 
# Gets the magnitude of the given vector.
# Note: The magnitude is 10,000 times what it should be because we need to 
#   capture the decimal component. Beware when using this.
#
# Parameters:
#   Vector register 1 - the vector.
#
# Returns:
#   _magnitude (scoreboard: xplsvtlts) - the magnitude of the vector.
#

# Sets _n equal to the squared magnitude of the vector so a sqrt can be applied.
scoreboard players operation _temp xplsvtlts = _x1 xplsvtlts
scoreboard players operation _temp xplsvtlts *= _x1 xplsvtlts
scoreboard players operation _n xplsvtlts = _temp xplsvtlts 

scoreboard players operation _temp xplsvtlts = _y1 xplsvtlts
scoreboard players operation _temp xplsvtlts *= _y1 xplsvtlts
scoreboard players operation _n xplsvtlts += _temp xplsvtlts

scoreboard players operation _temp xplsvtlts = _z1 xplsvtlts
scoreboard players operation _temp xplsvtlts *= _z1 xplsvtlts
scoreboard players operation _n xplsvtlts += _temp xplsvtlts

function xplsvtlts:math/sqrt
scoreboard players operation _magnitude xplsvtlts = _sqrt xplsvtlts

scoreboard players reset _n xplsvtlts
scoreboard players reset _temp xplsvtlts
scoreboard players reset _sqrt xplsvtlts

