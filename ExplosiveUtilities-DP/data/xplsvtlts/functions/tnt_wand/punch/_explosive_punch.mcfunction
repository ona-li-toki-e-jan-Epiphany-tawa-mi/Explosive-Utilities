##
# Has the player do an explosive punch that causes massive knockback.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

# High resistance to prevent immediate death.
effect give @s minecraft:resistance 1 3 true 

execute anchored eyes positioned ^ ^-0.25 ^1 summon minecraft:creeper run function xplsvtlts:tnt_wand/punch/_create_explosion

# Sets cooldown to whatever is in the config.
scoreboard players operation @s xplsvtlts_tnt_wand_punch_cooldown = tnt_wand_punch_cooldown xplsvtlts
# Kickstarts cooldown ticking.
schedule function xplsvtlts:tnt_wand/cooldown/tick_punch_cooldowns 1t
