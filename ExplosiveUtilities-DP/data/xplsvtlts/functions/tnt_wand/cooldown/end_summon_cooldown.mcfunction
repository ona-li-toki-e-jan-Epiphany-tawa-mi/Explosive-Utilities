##
# Runs once a player's tnt wand summon cooldown is over.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

# A/V indicator for when the cooldown is over.
playsound minecraft:entity.evoker.cast_spell player @a
particle minecraft:portal ~ ~1 ~ 0.75 1.5 0.75 0.4 60

scoreboard players reset @s xplsvtlts_tnt_wand_summon_cooldown