##
# Causes the nearest player to "pick up" a pistol kiln forge core, killing it 
#   and giving them the core item.
#
# Parameters:
#   @s - the combustion forge core.
#

execute at @s as @p run function xplsvtlts:pistol_kiln/give
kill @s