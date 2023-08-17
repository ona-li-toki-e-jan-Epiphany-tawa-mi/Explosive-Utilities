##
# Marks a newly broken combustion forge core as invalid and sends a/v feedback 
#   to the player.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

tag @s remove xplsvtlts_was_valid_structure

particle minecraft:crit ~ ~0.5 ~ 1 1 1 0.05 200 force
playsound block.amethyst_block.break block @a