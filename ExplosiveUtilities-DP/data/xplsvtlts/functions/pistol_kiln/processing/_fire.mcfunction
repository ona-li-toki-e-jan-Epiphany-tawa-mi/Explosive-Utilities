##
# Creates the explosion that forms the final operation of the pistol kiln to 
#   damage entities in the way of the kiln and eject the outputted items.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

# We need to create a fake explosion here because we don't want to destory the
#   items inside the kiln.

# A/v effects to create a faux explosion.
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2.0 1.0
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2.0 1.0
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0.0 1

# Damages entities in the way of the kiln
execute positioned ~ ~ ~ as @e[dx=1,dy=7,dz=1,predicate=!xplsvtlts:entity/is_ignorable] run damage @s 10.0 minecraft:explosion 

# Blasts items out.
execute as @e[type=minecraft:item,distance=..1] run data modify entity @s Motion[1] set value 2.0