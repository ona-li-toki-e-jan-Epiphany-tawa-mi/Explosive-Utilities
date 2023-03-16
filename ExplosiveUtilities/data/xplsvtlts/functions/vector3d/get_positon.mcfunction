##
# Gets the position of an entity and stores it in the first vector.
# If the entity is a vector math marker it will be destoryed here.
#
# Needs to be called with @s being the entity.
#

execute store result score _x1 xplsvtlts run data get entity @s Pos[0] 10000.0
execute store result score _y1 xplsvtlts run data get entity @s Pos[1] 10000.0
execute store result score _z1 xplsvtlts run data get entity @s Pos[2] 10000.0

# If a marker was used we can conveniently delete it here.
execute if entity @s[type=minecraft:armor_stand,tag=xplsvtlts_vector_math] run kill @s