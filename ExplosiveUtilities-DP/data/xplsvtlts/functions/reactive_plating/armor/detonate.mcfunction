##
# Detonates the reactive armor and applies a cooldown.
#
# Parameters:
#   @s - the bearer of the armor.
#   Location - at @s.
#   _reactive_level (scoreboard: xplsvtlts) - the number of reactive armor items worn by @s.
#

# High resistance to protect against the armor's explosion.
effect give @s minecraft:resistance 1 4 true 

# Larger explosion set bonus.
execute if score _reactive_level xplsvtlts matches ..3 run summon creeper ~ ~1 ~ {Fuse:0s,ExplosionRadius:1b,"CustomName":'{"text":"Reactive Armor Explosion"}',"CustomNameVisible":false}
execute if score _reactive_level xplsvtlts matches 4.. run summon creeper ~ ~1 ~ {Fuse:0s,ExplosionRadius:2b,"CustomName":'{"text":"Reactive Armor Explosion"}',"CustomNameVisible":false}

# Set bonus reduces cooldown.
scoreboard players operation @s xplsvtlts_reactive_armor_cooldown = reactive_armor_maximum_cooldown xplsvtlts
scoreboard players operation @s xplsvtlts_reactive_armor_cooldown /= _reactive_level xplsvtlts