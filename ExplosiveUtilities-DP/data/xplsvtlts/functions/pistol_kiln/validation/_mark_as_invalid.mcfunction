##
# Marks a newly broken pistol kiln core as invalid and sends a/v feedback to the 
#   player.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

tag @s remove xplsvtlts_was_valid_structure

particle minecraft:crit ~ ~0.5 ~ 1 1.5 1 0.05 200 force
playsound block.amethyst_block.break block @a