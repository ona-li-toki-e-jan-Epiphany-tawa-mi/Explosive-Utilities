##
# Gets the motion of an entity and stores it in the first vector.
#
# Needs to be called with @s being the entity.
#

execute store result score _x1 xplsvtlts run data get entity @s Motion[0] 10000.0
execute store result score _y1 xplsvtlts run data get entity @s Motion[1] 10000.0
execute store result score _z1 xplsvtlts run data get entity @s Motion[2] 10000.0