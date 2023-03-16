##
# Uninstalls the pack.
#

scoreboard players reset installed xplsvtlts
scoreboard players reset tnt_wand_cooldown xplsvtlts
scoreboard objectives remove xplsvtlts

scoreboard players reset @a xplsvtlts_tnt_wand_summon_cooldown
scoreboard objectives remove xplsvtlts_tnt_wand_summon_cooldown
scoreboard players reset @a xplsvtlts_tnt_wand_punch_cooldown
scoreboard objectives remove xplsvtlts_tnt_wand_punch_cooldown
scoreboard players reset @e xplsvtlts_fuse_freeze_time
scoreboard objectives remove xplsvtlts_fuse_freeze_time



tellraw @a {"text":"===================================================","color":"gold"}
tellraw @a {"text":"Successfully uninstalled Explosive Utilities!","color":"gold"}
tellraw @a {"text":"===================================================","color":"gold"}