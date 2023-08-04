##
# Runs the raycast.
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

scoreboard players set _should_continue xplsvtlts 1

execute if score _max_distance xplsvtlts matches ..0 run scoreboard players set _should_continue xplsvtlts 0
execute if score _should_continue xplsvtlts matches 1 unless block ~ ~ ~ #replaceable run scoreboard players set _should_continue xplsvtlts 0
execute if score _should_continue xplsvtlts matches 1 if entity @e[sort=nearest,limit=1,distance=..1.1,type=!item,tag=!xplsvtlts_raycast_marker] run function xplsvtlts:raycast/_check_entity_collision

execute if score _should_continue xplsvtlts matches 1 run tp @s ^ ^ ^1
execute if score _should_continue xplsvtlts matches 1 run scoreboard players remove _max_distance xplsvtlts 1
execute if score _should_continue xplsvtlts matches 1 at @s run function xplsvtlts:raycast/_raycast_loop

scoreboard players reset _should_continue xplsvtlts