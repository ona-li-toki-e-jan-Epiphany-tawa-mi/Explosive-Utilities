##
# Explodes dynamite entites, causing destruction and killing the dynamite.
#
# Parameters:
#   @s - the dynamite entity.
#   Location - at @s.
#

summon minecraft:creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:1b,CustomName:'{"text":"Dynamite Explosion"}',CustomNameVisible:0b}

kill @s
