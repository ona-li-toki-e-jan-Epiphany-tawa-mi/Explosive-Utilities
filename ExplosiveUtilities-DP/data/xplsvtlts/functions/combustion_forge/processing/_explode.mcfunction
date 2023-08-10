##
# Creates the explosion that forms the final operation of the combustion forge 
#   to damage nearby entities and eject the outputted items.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

# We need to create a fake explosion here because we don't want to destory the
#   items inside the forge.

# A/v effects to create a faux explosion.
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2.0 1.0
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2.0 1.0
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0.0 1

# Damages entites, more for those in front of the forge.
execute positioned ^ ^ ^3 as @e[distance=..3,predicate=!xplsvtlts:entity/is_ignorable] run damage @s 7.5 minecraft:explosion 
execute as @e[distance=..6,predicate=!xplsvtlts:entity/is_ignorable] run damage @s 1.0 minecraft:explosion 

# Blasts items out.
execute if entity @s[y_rotation=-95.0..-85.0] as @e[type=minecraft:item,distance=..1] run data modify entity @s Motion set value [1.0,0.2,0.0]
execute if entity @s[y_rotation=85.0..95.0] as @e[type=minecraft:item,distance=..1] run data modify entity @s Motion set value [-1.0,0.2,0.0]
execute if entity @s[y_rotation=-5.0..5.0] as @e[type=minecraft:item,distance=..1] run data modify entity @s Motion set value [0.0,0.2,1.0]
execute if entity @s[y_rotation=175.0..185.0] as @e[type=minecraft:item,distance=..1] run data modify entity @s Motion set value [0.0,0.2,-1.0]