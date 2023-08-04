##
# Tests whether an entity can be collided with by a raycast with conditions that
#   cannot be resonably checked in an entity selector.
#
# Parameters:
#   @s - the entity.
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID of the
#       source entity, if applicable.
#
# Returns:
#   _should_continue (scoreboard: xplsvtlts) - 1, if the raycast should 
#       continue. 0, if the raycast should stop due to an entity collision.
#

scoreboard players set _should_continue xplsvtlts 0

# Ensures it does not collide with the entity that is the source of the raycast.
# If there is no source entity, the UUID will be [0,0,0,0], which won't match
#   with anything.
function xplsvtlts:uuid/equals_uuid_of
execute if score _success xplsvtlts matches 1 run scoreboard players set _should_continue xplsvtlts 1

scoreboard players reset _success xplsvtlts