##
# Runs the raycast.
#
# If there is a source entity, they will need to be loaded into the raycast
#   memory.
#
# Parameters:
#   @s - the raycast marker as a fresh armor stand.
#   Location - at @s.
#   _max_distance (scoreboard: xplsvtlts) - the remaning distance before ending 
#       the raycast.
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID of the
#       source entity, if applicable.
#
# Returns:
#   An armor stand with the tag "xplsvtlts_raycast_marker" as the raycast 
#       result.
#

execute if score _max_distance xplsvtlts matches ..0 run return 0
execute unless block ~ ~ ~ #replaceable run return 0
execute if entity @e[limit=1,distance=..1.1,sort=nearest,predicate=!xplsvtlts:entity/is_ignorable,predicate=!xplsvtlts:entity/does_uuid_match_raycast_memory] run return 0

tp @s ^ ^ ^1
scoreboard players remove _max_distance xplsvtlts 1
execute at @s run function xplsvtlts:raycast/_raycast_loop
