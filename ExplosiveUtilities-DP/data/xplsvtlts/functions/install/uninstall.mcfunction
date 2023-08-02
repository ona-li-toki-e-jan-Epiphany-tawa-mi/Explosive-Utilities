##
# Uninstalls the pack.
#

scoreboard players reset installed xplsvtlts
scoreboard players reset tnt_wand_summon_cooldown xplsvtlts
scoreboard players reset tnt_wand_punch_cooldown xplsvtlts
scoreboard players reset reactive_armor_maximum_cooldown xplsvtlts
scoreboard players reset disable_tnt_wand_corraling_restrictions xplsvtlts
scoreboard objectives remove xplsvtlts

scoreboard players reset @e xplsvtlts_tnt_wand_summon_cooldown
scoreboard objectives remove xplsvtlts_error_error_error_error 
scoreboard players reset @a xplsvtlts_tnt_wand_summon_cooldown
scoreboard objectives remove xplsvtlts_tnt_wand_summon_cooldown
scoreboard players reset @a xplsvtlts_tnt_wand_punch_cooldown
scoreboard objectives remove xplsvtlts_tnt_wand_punch_cooldown
scoreboard players reset @e xplsvtlts_fuse_freeze_time
scoreboard objectives remove xplsvtlts_fuse_freeze_time
scoreboard players reset @a xplsvtlts_reactive_armor_cooldown
scoreboard objectives remove xplsvtlts_reactive_armor_cooldown



tellraw @a {"text":"===================================================","color":"gold"}
tellraw @a {"text":"Successfully uninstalled Explosive Utilities!","color":"gold"}
tellraw @a {"text":"===================================================","color":"gold"}