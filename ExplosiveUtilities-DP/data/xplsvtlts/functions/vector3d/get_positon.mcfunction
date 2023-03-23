##
# Gets the position of an entity and stores it in the first vector.
# Note: scales input by 10,000 to capture the decimal component of the number.
#
# Needs to be called with @s being the entity.
#

execute store result score _x1 xplsvtlts run data get entity @s Pos[0] 10000.0
execute store result score _y1 xplsvtlts run data get entity @s Pos[1] 10000.0
execute store result score _z1 xplsvtlts run data get entity @s Pos[2] 10000.0