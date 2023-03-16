##
# Called once every tick.
#

execute as @a[scores={xplsvtlts_use_item=1..}] at @s run function xplsvtlts:on_use_item

execute as @a[scores={xplsvtlts_tnt_wand_cooldown=1..}] run scoreboard players remove @s xplsvtlts_tnt_wand_cooldown 1