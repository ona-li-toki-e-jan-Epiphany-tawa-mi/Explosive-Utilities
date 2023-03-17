##
# Called once every tick.
#

execute as @e[type=minecraft:interaction,tag=xplsvtlts_tnt_wand_cursor] at @s run function xplsvtlts:tnt_wand/tick_cursor
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe",tag:{CustomModelData:417106215}}}] at @s run function xplsvtlts:tnt_wand/on_tick

execute as @e[type=minecraft:tnt,scores={xplsvtlts_fuse_freeze_time=1..}] run function xplsvtlts:freeze_fuse

execute as @a[scores={xplsvtlts_tnt_wand_summon_cooldown=1..}] run scoreboard players remove @s xplsvtlts_tnt_wand_summon_cooldown 1
execute as @a[scores={xplsvtlts_tnt_wand_punch_cooldown=1..}] run scoreboard players remove @s xplsvtlts_tnt_wand_punch_cooldown 1