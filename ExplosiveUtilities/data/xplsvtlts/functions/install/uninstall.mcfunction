##
# Uninstalls the pack.
#

scoreboard players reset installed xplsvtlts
scoreboard players reset tnt_wand_cooldown xplsvtlts
scoreboard objectives remove xplsvtlts

scoreboard players reset @a xplsvtlts_use_item
scoreboard objectives remove xplsvtlts_use_item
scoreboard players reset @a xplsvtlts_tnt_wand_cooldown
scoreboard objectives remove xplsvtlts_tnt_wand_cooldown



tellraw @a {"text":"===================================================","color":"gold"}
tellraw @a {"text":"Successfully uninstalled Explosive Utilities!","color":"gold"}
tellraw @a {"text":"===================================================","color":"gold"}