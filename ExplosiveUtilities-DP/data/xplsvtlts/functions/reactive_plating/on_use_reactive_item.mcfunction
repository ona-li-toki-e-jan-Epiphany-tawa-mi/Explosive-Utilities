##
# Called when an entity uses a reactive item, i.e. attacking, right-clicking blocks or entities, etc..
#
# Parameters:
#   @s - the entity.
#   Location - at @s.
#

# TODO make explosive mining work.
advancement revoke @s only xplsvtlts:hit_with_reactive_item
advancement revoke @s only xplsvtlts:strip_block_with_reactive_axe
advancement revoke @s only xplsvtlts:use_reactive_shovel_on_block
advancement revoke @s only xplsvtlts:till_with_reactive_hoe
advancement revoke @s only xplsvtlts:use_reactive_shears_on_block
advancement revoke @s only xplsvtlts:use_reactive_shears_on_entity


# TODO only make durability decrease when not in creative mode.

# High resistance to protect against the item's explosion.
effect give @s minecraft:resistance 1 4 true 

#TODO make use raycast.
summon creeper ^ ^1 ^1 {Fuse:0s,ExplosionRadius:1b,"CustomName":'{"text":"Reactive Item Explosion"}',"CustomNameVisible":false}

item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_no_unbreaking
item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_unbreaking_i
item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_unbreaking_ii
item modify entity @s weapon xplsvtlts:reactive_wear_and_tear_unbreaking_iii