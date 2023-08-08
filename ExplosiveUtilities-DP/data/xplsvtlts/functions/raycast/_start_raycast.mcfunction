##
# Intializes the raycast marker with the needed tags, nbt, and rotation and 
#   starts the raycast loop.
#
# If there is a source entity, they will need to be loaded into the raycast
#   memory.
#
# Parameters: 
#   @s - the raycast marker as a fresh armor stand.
#   _max_distance (scoreboard: xplsvtlts) - the maximum distance to carry the 
#       raycast.
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID of the
#       source entity, if applicable.
#   _source_y_rotation (scoreboard: xplsvtlts) - the y rotation to give to the 
#       raycast marker.
#   _source_x_rotation (scoreboard: xplsvtlts) - the x rotation to give to the 
#       raycast marker.
#
# Returns:
#   An armor stand with the tag "xplsvtlts_raycast_marker" as the raycast 
#       result.
#

data merge entity @s {Marker:1b,Invisible:1b,Tags:["xplsvtlts_raycast_marker"]}

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get _source_y_rotation xplsvtlts
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get _source_x_rotation xplsvtlts

execute at @s run function xplsvtlts:raycast/_raycast_loop