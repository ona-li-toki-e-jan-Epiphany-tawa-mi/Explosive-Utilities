##
# Called when a player uses a tnt wand
#
# Needs to be called with @s being the player, located at @s.
#

advancement revoke @s only xplsvtlts:use_tnt_wand



# Tnt corraling abilty. Note: works with all entities under #xplsvtlts:explosive
# Gets position in front of player into the third vector slot for setting the motion of the tnt towards that point.
scoreboard players set _corraled_tnt xplsvtlts 0
function xplsvtlts:vector3d/get_rotation_vector
scoreboard players set _scalar xplsvtlts 4
function xplsvtlts:vector3d/scalar_multiply
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/get_eye_position
function xplsvtlts:vector3d/add
scoreboard players remove _y1 xplsvtlts 2500
function xplsvtlts:vector3d/store/3
execute anchored eyes positioned ^ ^-0.25 ^4 as @e[type=#xplsvtlts:explosive,distance=..5] at @s run function xplsvtlts:tnt_wand/corral_tnt
# Compatibility with PigsThatGoBoomInTheNight! to corral explosive entities.
execute if score installed pgsthtgbmnthnght matches 1 anchored eyes positioned ^ ^-0.25 ^4 as @e[tag=pgsthtgbmnthnght_explosive,distance=..5] at @s run function xplsvtlts:tnt_wand/corral_tnt
# Compatibility with Incendiary Bees to corral bees.
execute if score installed incndrybs matches 1 anchored eyes positioned ^ ^-0.25 ^4 as @e[type=minecraft:bee,distance=..5] at @s run function xplsvtlts:tnt_wand/corral_tnt

# Prevents spawning tnt whilst corraling if the user moves to fast or something lags.
execute if score _corraled_tnt xplsvtlts matches 1 run scoreboard players operation @s xplsvtlts_tnt_wand_summon_cooldown = tnt_wand_summon_cooldown xplsvtlts


# Tnt summon ability.
execute if score _corraled_tnt xplsvtlts matches 0 unless score @s xplsvtlts_tnt_wand_summon_cooldown matches 1.. anchored eyes positioned ^ ^-0.25 ^4 run function xplsvtlts:tnt_wand/try_summon_tnt



scoreboard players reset _scalar xplsvtlts
function xplsvtlts:vector3d/reset_memory
scoreboard players reset _corraled_tnt xplsvtlts