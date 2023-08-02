##
# Sets the power (basically acceleration) of a fireball entity to the given 
#   vector.
# Note: scales input by 1/70 to undo the scaling by the vector get methods.
#
# Parameters:
#   @s - the entity.
#   Vector register 1 - the power vector.
#

execute store result entity @s power[0] double 0.014286 run scoreboard players get _x1 xplsvtlts
execute store result entity @s power[1] double 0.014286 run scoreboard players get _y1 xplsvtlts
execute store result entity @s power[2] double 0.014286 run scoreboard players get _z1 xplsvtlts