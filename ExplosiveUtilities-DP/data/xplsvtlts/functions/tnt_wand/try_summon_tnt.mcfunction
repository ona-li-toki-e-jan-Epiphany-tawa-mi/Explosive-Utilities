##
# Attempts to summon a piece of tnt using the tnt wand.
# If the player is in survival, it will need to consume a piece of tnt to succeed.
#
# Needs to be called with @s being the player, located where the tnt should be spawned.
#

scoreboard players set _summoned_tnt xplsvtlts 1
execute unless entity @s[gamemode=creative] run execute store success score _summoned_tnt xplsvtlts run clear @s minecraft:tnt 1

execute if score _summoned_tnt xplsvtlts matches 1 run summon minecraft:tnt ~ ~ ~ {Fuse:80s}
execute if score _summoned_tnt xplsvtlts matches 1 run scoreboard players operation @s xplsvtlts_tnt_wand_summon_cooldown = tnt_wand_summon_cooldown xplsvtlts

execute if score _summoned_tnt xplsvtlts matches 1 run playsound minecraft:entity.evoker.prepare_attack player @a ~ ~ ~ 1.0 1.0
execute if score _summoned_tnt xplsvtlts matches 1 run particle minecraft:large_smoke ~ ~ ~ 0.25 0.25 0.25 0.15 45

scoreboard players reset _summoned_tnt xplsvtlts