##
# Called once every tick.
#

execute as @a[predicate=xplsvtlts:is_holding_click_detection_enabled_item] at @s run function xplsvtlts:click_detection/on_tick_player

execute as @e[type=minecraft:trident,nbt={Trident:{tag:{"Reactive":1b}}}] run function xplsvtlts:reactive_plating/trident/on_tick

execute as @e[scores={xplsvtlts_fuse_freeze_time=1..}] run function xplsvtlts:freeze_fuse

execute as @a[scores={xplsvtlts_tnt_wand_summon_cooldown=1..}] run function xplsvtlts:tnt_wand/tick_summon_cooldown
execute as @a[scores={xplsvtlts_tnt_wand_punch_cooldown=1..}] run function xplsvtlts:tnt_wand/tick_punch_cooldown
execute as @a[scores={xplsvtlts_reactive_armor_cooldown=1..}] run function xplsvtlts:reactive_plating/armor/tick_cooldown