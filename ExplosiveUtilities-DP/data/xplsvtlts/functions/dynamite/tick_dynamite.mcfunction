##
# Runs once every tick whilst dynamite entities still exist.
# Needs to be kickstarted when a dynamite entity is created.
#

scoreboard players set _exists_dynamite xplsvtlts 0
execute store success score _exists_dynamite xplsvtlts run execute as @e[predicate=xplsvtlts:entity/dynamite/is_dynamite] at @s run function xplsvtlts:dynamite/_on_tick_dynamite

execute if score _exists_dynamite xplsvtlts matches 1 run schedule function xplsvtlts:dynamite/tick_dynamite 1t

scoreboard players reset _exists_dynamite xplsvtlts