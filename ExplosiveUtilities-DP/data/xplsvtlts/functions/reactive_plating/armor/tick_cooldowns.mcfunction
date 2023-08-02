##
# Runs once every tick whilst players with a reactive armor cooldown still exist.
# Needs to be kickstarted when a player is given a cooldown.
#

scoreboard players set _exists_players_with_cooldown xplsvtlts 0
execute store success score _exists_players_with_cooldown xplsvtlts run execute as @a[scores={xplsvtlts_reactive_armor_cooldown=1..}] run function xplsvtlts:reactive_plating/armor/on_tick_cooldown

execute if score _exists_players_with_cooldown xplsvtlts matches 1 run schedule function xplsvtlts:reactive_plating/armor/tick_cooldowns 1t

scoreboard players reset _exists_players_with_cooldown xplsvtlts