##
# Called when an entity uses a reactive item, i.e. attacking, right-clicking blocks or entities, etc..
#
# Parameters:
#   @s - the entity.
#   Location - at @s.
#

advancement revoke @s only xplsvtlts:hit_with_reactive_item
advancement revoke @s only xplsvtlts:strip_block_with_reactive_axe
advancement revoke @s only xplsvtlts:use_reactive_shovel_on_block
advancement revoke @s only xplsvtlts:till_with_reactive_hoe
advancement revoke @s only xplsvtlts:use_reactive_shears_on_block
advancement revoke @s only xplsvtlts:use_reactive_shears_on_entity



# High resistance to protect against the item's explosion.
effect give @s minecraft:resistance 1 4 true 

# Raycasts out to the nearest block or entity to try and create the explosion with the thing the player interacted with.
scoreboard players set _max_distance xplsvtlts 6
function xplsvtlts:raycast/raycast_from_entity
execute at @e[type=minecraft:armor_stand,tag=xplsvtlts_raycast_marker,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:1b,"CustomName":'{"text":"Reactive Item Explosion"}',"CustomNameVisible":false}
function xplsvtlts:raycast/cleanup
scoreboard players reset _max_distance xplsvtlts

execute if entity @s[gamemode=!creative] run item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_no_unbreaking
execute if entity @s[gamemode=!creative] run item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_unbreaking_i
execute if entity @s[gamemode=!creative] run item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_unbreaking_ii
execute if entity @s[gamemode=!creative] run item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_unbreaking_iii