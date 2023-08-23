##
# Sends out a simple raycast from the given entity, up to _max_distance blocks.
# Stops either upon collision with a non-item entity or a block that is not in 
#   #minecraft:replaceable.
#
# Make sure to call the function xplsvtlts:raycast/cleanup afterwards to clean 
#   up any markers.
#
# Parameters:
#   @s - the entity to start raycasting from.
#   _max_distance (scoreboard: xplsvtlts) - the maximum distance to carry the 
#       raycast.
#   _collide_with_entities (scoreboard: xplsvtlts) - 1 to collide with entities,
#       0 to not.
#
# Returns:
#   An armor stand with the tag "xplsvtlts_raycast_marker" as the raycast 
#       result. Make sure to call the function xplsvtlts:raycast/cleanup 
#       afterwards to remove it.
#

# Needed so the raycast does not collide with @s.
function xplsvtlts:uuid/get_uuid
function xplsvtlts:raycast/store_uuid_into_raycast_memory
# The rotation of the entity needs to be stored so it can be copied to the 
#   marker so it faces the same way.
execute store result score _source_y_rotation xplsvtlts run data get entity @s Rotation[0] 1000.0
execute store result score _source_x_rotation xplsvtlts run data get entity @s Rotation[1] 1000.0

execute anchored eyes positioned ^ ^ ^ summon minecraft:armor_stand run function xplsvtlts:raycast/_start_raycast

scoreboard players reset _source_y_rotation xplsvtlts
scoreboard players reset _source_x_rotation xplsvtlts
function xplsvtlts:uuid/reset_get_uuid