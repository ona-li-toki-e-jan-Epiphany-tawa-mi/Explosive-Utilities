##
# Runs once every tick whilst players with a tnt wand explosive punch cooldown 
#   still exist.
# Needs to be kickstarted when a player is given a cooldown.
#

scoreboard players set _exists_players_with_cooldown xplsvtlts 0
execute store success score _exists_players_with_cooldown xplsvtlts run execute as @a[scores={xplsvtlts_tnt_wand_punch_cooldown=1..}] run function xplsvtlts:tnt_wand/cooldown/_on_tick_punch_cooldown

execute if score _exists_players_with_cooldown xplsvtlts matches 1 run schedule function xplsvtlts:tnt_wand/cooldown/tick_punch_cooldowns 1t

scoreboard players reset _exists_players_with_cooldown xplsvtlts