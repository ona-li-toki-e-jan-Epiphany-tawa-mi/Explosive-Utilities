##
# Runs once a player's tnt wand summon cooldown is over.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

# A/V indicator for when the cooldown is over.
playsound minecraft:block.fire.extinguish player @a
particle minecraft:large_smoke ~ ~ ~ 0.25 1 0.25 0.2 40

scoreboard players reset @s xplsvtlts_reactive_armor_cooldown
