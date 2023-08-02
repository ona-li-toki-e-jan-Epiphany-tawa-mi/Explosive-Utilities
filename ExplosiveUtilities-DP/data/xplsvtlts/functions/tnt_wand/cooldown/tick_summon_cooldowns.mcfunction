##
# Runs once every tick whilst players with a tnt wand cooldown still exist.
# Needs to be kickstarted when a player is given a cooldown.
#

scoreboard players set _exists_players_with_cooldown xplsvtlts 0
execute store success score _exists_players_with_cooldown xplsvtlts run execute as @a[scores={xplsvtlts_tnt_wand_summon_cooldown=1..}] run function xplsvtlts:tnt_wand/cooldown/on_tick_summon_cooldown

execute if score _exists_players_with_cooldown xplsvtlts matches 1 run schedule function xplsvtlts:tnt_wand/cooldown/tick_summon_cooldowns 1t

scoreboard players reset _exists_players_with_cooldown xplsvtlts