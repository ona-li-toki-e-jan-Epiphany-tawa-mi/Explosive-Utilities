##
# Causes the nearest player to "pick up" a combustion forge core, killing it and 
#   giving them the core item.
#
# Parameters:
#   @s - the combustion forge core.
#

execute at @s as @p run function xplsvtlts:combustion_forge/on_craft
kill @s