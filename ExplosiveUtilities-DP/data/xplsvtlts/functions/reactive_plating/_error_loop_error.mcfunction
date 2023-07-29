##
# [Data expunged]
# [Data expunged]
# [Data expunged]
# [Data expunged]
#
# [Data expunged]
# [Data expunged]
#
# [Data expunged]
# [Data expunged]
# [Data expunged]
#

execute at @e[type=minecraft:armor_stand,tag=xplsvtlts_error_error_invalid] run summon minecraft:armor_stand ~ ~ ~ {Tags:[xplsvtlts_undefined_error],Marker:1b,Invisible:1b}
execute at @e[type=minecraft:armor_stand,tag=xplsvtlts_error_error_invalid] positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:anvil run function xplsvtlts:anvil/simulate_useage
scoreboard players remove @e[type=minecraft:armor_stand,tag=xplsvtlts_error_error_invalid] xplsvtlts_error_error_error_error 1
kill @e[type=minecraft:armor_stand,tag=xplsvtlts_error_error_invalid,scores={xplsvtlts_error_error_error_error=..0}]

execute as @e[type=minecraft:armor_stand,tag=xplsvtlts_undefined_error] at @s run spreadplayers ~ ~ 15 30 false @s
execute at @e[type=minecraft:armor_stand,tag=xplsvtlts_undefined_error] run summon minecraft:lightning_bolt ~ ~ ~ {CustomName:'{"text":"время пришло","obfuscated":true}',CustomNameVisible:0b}
execute at @e[type=minecraft:armor_stand,tag=xplsvtlts_undefined_error] run summon minecraft:creeper ~ ~ ~ {"Fuse":0s,"powered":1b,CustomName:'{"text":"получить по заслугам","obfuscated":true}',CustomNameVisible:0b}
execute at @e[type=minecraft:armor_stand,tag=xplsvtlts_undefined_error] run summon creeper ~ ~ ~ {ExplosionRadius:6b,CustomName:'{"text":"repeerC","obfuscated":true}',CustomNameVisible:0b,HasVisualFire:1b,Glowing:1b,powered:1b,ActiveEffects:[{Id:1,Amplifier:2b,Duration:-1},{Id:8,Amplifier:2b,Duration:-1},{Id:10,Amplifier:0b,Duration:-1},{Id:11,Amplifier:4b,Duration:5},{Id:14,Amplifier:0b,Duration:-1},{Id:20,Amplifier:1b,Duration:-1}]}
kill @e[type=minecraft:armor_stand,tag=xplsvtlts_undefined_error]

execute if entity @e[type=minecraft:armor_stand,tag=xplsvtlts_error_error_invalid] run schedule function xplsvtlts:reactive_plating/_error_loop_error 10t