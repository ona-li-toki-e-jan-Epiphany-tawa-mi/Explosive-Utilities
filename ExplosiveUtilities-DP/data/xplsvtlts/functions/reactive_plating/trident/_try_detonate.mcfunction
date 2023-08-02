##
# Attempts to detonate the reactive trident thrown by the player.
#
# Parameters:
#   @s - the reactive trident.
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID of the 
#       player who threw it.
#   _success (scoreboard: xplsvtlts) - intialize to 0. Used to check to see if a 
#       trident was found
#
# Returns:
#   _success (scoreboard: xplsvtlts) - 2 if a trident was detonated, else 0.
#

execute if score _success xplsvtlts matches 0 run function xplsvtlts:uuid/equals_uuid_of_owner

execute if score _success xplsvtlts matches 1 run function xplsvtlts:reactive_plating/trident/_detonate
# Prevents further tridents from exploding from 1 hit.
execute if score _success xplsvtlts matches 1 run scoreboard players set _success xplsvtlts 2
