##
# Marks a newly broken combustion forge core as invalid, removes it's 
#   invisibilty so players can find it, and sends a/v feedback to the player.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

tag @s remove xplsvtlts_was_valid_structure

data modify entity @s Invisible set value 0b

particle minecraft:crit ~ ~0.5 ~ 1 1 1 0.05 200 force
playsound block.amethyst_block.break block @a