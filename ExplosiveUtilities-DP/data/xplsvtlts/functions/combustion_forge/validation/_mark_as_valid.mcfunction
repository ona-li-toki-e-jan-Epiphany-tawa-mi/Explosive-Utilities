##
# Marks a newly completed combustion forge core as valid, makes it invisible,
#   and sends a/v feedback to the player.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

tag @s add xplsvtlts_was_valid_structure

data modify entity @s Invisible set value 1b

particle minecraft:happy_villager ~ ~0.5 ~ 1 1 1 0.3 200 force
playsound block.amethyst_block.place block @a