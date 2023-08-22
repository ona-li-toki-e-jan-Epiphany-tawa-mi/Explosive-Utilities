##
# Runs every tick for dynamite entities.
#
# Parameters:
#   @s - the dynamite entity.
#   Location - at @s.
#

execute anchored eyes positioned ^ ^ ^ run particle minecraft:flame ~ ~ ~ 0 0 0 0.0 1

execute if score @s xplsvtlts_dynamite_fuse matches ..0 run function xplsvtlts:dynamite/_explode
scoreboard players remove @s xplsvtlts_dynamite_fuse 1