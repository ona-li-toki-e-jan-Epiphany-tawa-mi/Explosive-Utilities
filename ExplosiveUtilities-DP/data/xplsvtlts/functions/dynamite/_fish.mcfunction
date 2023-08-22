##
# Fishes using the dynamite.
#
# Parameters:
#   Location - at the dynamite entity.
#

loot spawn ~ ~ ~ fish minecraft:gameplay/fishing ~ ~ ~ minecraft:fishing_rod
# Needed so items don't die to explosion.
execute as @e[type=item,distance=..1] run data modify entity @s Invulnerable set value 1b