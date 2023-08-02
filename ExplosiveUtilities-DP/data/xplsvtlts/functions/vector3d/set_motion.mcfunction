##
# Sets the motion of an entity to the given vector.
# Note: scales input by 1/10,000 to undo the scaling by the vector get methods.
#
# Parameters:
#   @s - the entity.
#   Vector register 1 - the motion vector.
#

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get _x1 xplsvtlts
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get _y1 xplsvtlts
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get _z1 xplsvtlts