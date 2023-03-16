##
# Called when a player uses a tnt wand
#
# Needs to be called with @s being the player, located at @s.
#

# Tnt corraling abilty.
scoreboard players set _corraled_tnt xplsvtlts 0
execute positioned ^ ^1 ^4 as @e[type=minecraft:tnt,distance=..4] run function xplsvtlts:tnt_wand/corral_tnt
# Prevents spawning tnt whilst corraling if the user moves to fast or something lags.
execute if score _corraled_tnt xplsvtlts matches 1 run scoreboard players operation @s xplsvtlts_tnt_wand_cooldown = tnt_wand_cooldown xplsvtlts

# Tnt summon ability.
execute if score _corraled_tnt xplsvtlts matches 0 unless score @s xplsvtlts_tnt_wand_cooldown matches 1.. positioned ^ ^1 ^4 run function xplsvtlts:tnt_wand/try_summon_tnt

scoreboard players reset _corraled_tnt xplsvtlts