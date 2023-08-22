##
# Explodes dynamite entites, causing destruction, possibly fishing(?), and 
#   killing the dynamite.
#
# Parameters:
#   @s - the dynamite entity.
#   Location - at @s.
#

summon minecraft:creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:1b,CustomName:'{"text":"Dynamite Explosion"}',CustomNameVisible:0b}

# Great depression reference???!?!?!?!
execute if block ~ ~ ~ minecraft:water if predicate xplsvtlts:entity/dynamite/fishing_chance run function xplsvtlts:dynamite/_fish

kill @s
