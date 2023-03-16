##
# Has the player do an explosive punch that causes massive knockback 
# If the player is in survival, it will need to consume a piece of tnt to succeed.
# TODO add massive knockback
# Needs to be called with @s being the player, located at @s.
#

scoreboard players set _summoned_tnt xplsvtlts 1
execute unless entity @s[gamemode=creative] run execute store success score _summoned_tnt xplsvtlts run clear @s minecraft:tnt 1

# High resistance to prevent immediate death.
execute if score _summoned_tnt xplsvtlts matches 1 run effect give @s minecraft:resistance 1 3 true 
execute if score _summoned_tnt xplsvtlts matches 1 run summon minecraft:creeper ^ ^1.5 ^1 {ExplosionRadius:2b, Fuse:0s, "CustomName": '{"text":"Explosion Wand Explosive Punch"}', CustomNameVisible: false}

execute if score _summoned_tnt xplsvtlts matches 1 run scoreboard players operation @s xplsvtlts_tnt_wand_punch_cooldown = tnt_wand_punch_cooldown xplsvtlts