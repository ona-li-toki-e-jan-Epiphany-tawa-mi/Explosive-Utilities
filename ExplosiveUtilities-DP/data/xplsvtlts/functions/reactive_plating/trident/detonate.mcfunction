##
# Detonates a reactive trident and marks that it did.
#
# Parameters:
#   @s - the reactive trident.
#

execute at @s run summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:1b,"CustomName":'{"text":"Reactive Trident Explosion"}',"CustomNameVisible":false}
tag @s add xplsvtlts_exploded_reactive_trident
