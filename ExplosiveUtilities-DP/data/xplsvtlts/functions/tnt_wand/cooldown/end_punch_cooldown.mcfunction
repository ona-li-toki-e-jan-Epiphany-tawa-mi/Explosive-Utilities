##
# Runs once a player's tnt wand explosive punch cooldown is over.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

# A/V indicator for when the cooldown is over.
playsound minecraft:entity.evoker.prepare_summon player @a
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.6 60

scoreboard players reset @s xplsvtlts_tnt_wand_punch_cooldown