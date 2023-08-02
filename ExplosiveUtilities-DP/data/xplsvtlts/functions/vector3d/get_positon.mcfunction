##
# Gets the position of an entity as a vector
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Parameters:
#   @s - the entity.
# 
# Returns: 
#   Vector register 1 - the position of the entity.
#

execute store result score _x1 xplsvtlts run data get entity @s Pos[0] 10000.0
execute store result score _y1 xplsvtlts run data get entity @s Pos[1] 10000.0
execute store result score _z1 xplsvtlts run data get entity @s Pos[2] 10000.0