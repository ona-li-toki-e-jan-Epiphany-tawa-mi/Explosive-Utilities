##
# Attempts to do an explosive punch that causes massive knockback.
# If the player is in survival, they will need to consume a piece of tnt to 
#   succeed.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

scoreboard players set _can_punch xplsvtlts 1
execute unless entity @s[gamemode=creative] run execute store success score _can_punch xplsvtlts run clear @s minecraft:tnt 1

execute if score _can_punch xplsvtlts matches 1 run function xplsvtlts:tnt_wand/punch/_explosive_punch

scoreboard players reset _can_punch xplsvtlts