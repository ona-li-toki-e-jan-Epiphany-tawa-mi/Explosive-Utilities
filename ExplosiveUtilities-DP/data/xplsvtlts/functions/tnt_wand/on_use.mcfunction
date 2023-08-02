##
# Called when a player uses a tnt wand
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

advancement revoke @s only xplsvtlts:event_listeners/on_use/use_tnt_wand



execute anchored eyes positioned ^ ^-0.25 ^4 run function xplsvtlts:tnt_wand/corraling/try_corral
# Prevents spawning tnt whilst corraling if the user moves to fast or something 
#   lags.
execute if score _corraled_tnt xplsvtlts matches 1 run scoreboard players operation @s xplsvtlts_tnt_wand_summon_cooldown = tnt_wand_summon_cooldown xplsvtlts
# Kickstarts cooldown ticking.
execute if score _corraled_tnt xplsvtlts matches 1 run schedule function xplsvtlts:tnt_wand/cooldown/tick_summon_cooldowns 1t


# Tnt summon ability.
execute if score _corraled_tnt xplsvtlts matches 0 unless score @s xplsvtlts_tnt_wand_summon_cooldown matches 1.. anchored eyes positioned ^ ^-0.25 ^4 run function xplsvtlts:tnt_wand/summoning/try_summon_tnt



scoreboard players reset _scalar xplsvtlts
function xplsvtlts:vector3d/reset_memory
scoreboard players reset _corraled_tnt xplsvtlts