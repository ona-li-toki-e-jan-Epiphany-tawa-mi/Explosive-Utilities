##
# Called when a player blocks damage using a reactive shield.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

advancement revoke @s only xplsvtlts:reactive_shield_block



# Can consume 1 gunpowder if shifting for a larger explosion.
scoreboard players set _use_larger_explosion xplsvtlts 0
execute if predicate xplsvtlts:is_shifting store success score _use_larger_explosion xplsvtlts run clear @s minecraft:gunpowder 1

execute if score _use_larger_explosion xplsvtlts matches 0 run summon creeper ^ ^1 ^0.25 {Fuse:0s,ExplosionRadius:1b,"CustomName":'{"text":"Reactive Shield Explosion"}',"CustomNameVisible":false}
execute if score _use_larger_explosion xplsvtlts matches 1 run summon creeper ^ ^1 ^0.25 {Fuse:0s,ExplosionRadius:2b,"CustomName":'{"text":"Reactive Shield Explosion"}',"CustomNameVisible":false}

scoreboard players reset _use_larger_explosion xplsvtlts

