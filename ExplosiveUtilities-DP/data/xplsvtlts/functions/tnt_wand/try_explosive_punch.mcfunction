##
# Has the player do an explosive punch that causes massive knockback 
# If the player is in survival, it will need to consume a piece of tnt to succeed.
#
# Needs to be called with @s being the player, located at @s.
#

scoreboard players set _can_punch xplsvtlts 1
execute unless entity @s[gamemode=creative] run execute store success score _can_punch xplsvtlts run clear @s minecraft:tnt 1

# High resistance to prevent immediate death.
execute if score _can_punch xplsvtlts matches 1 run effect give @s minecraft:resistance 1 3 true 

# Summons actual explosion. The explosion power is toned down so the player doesn't Minecraft themselves.
execute if score _can_punch xplsvtlts matches 1 run summon minecraft:creeper ^ ^1.5 ^1 {ExplosionRadius:2b, Fuse:0s, "CustomName": '{"text":"Explosion Wand Explosive Punch"}', CustomNameVisible: false}

# Applies extreme knockback to all entities nearby the explosion.
# Needs to be ran a tick later to prevent 
execute if score _can_punch xplsvtlts matches 1 run summon minecraft:armor_stand ^ ^1.5 ^1 {Marker:true, Tags:["xplsvtlts_punch_knockback_marker"]}
execute if score _can_punch xplsvtlts matches 1 run schedule function xplsvtlts:tnt_wand/knockback/apply_punch_knockback 1t



# Sets cooldown to whatever is in the config.
execute if score _can_punch xplsvtlts matches 1 run scoreboard players operation @s xplsvtlts_tnt_wand_punch_cooldown = tnt_wand_punch_cooldown xplsvtlts

scoreboard players reset _can_punch xplsvtlts