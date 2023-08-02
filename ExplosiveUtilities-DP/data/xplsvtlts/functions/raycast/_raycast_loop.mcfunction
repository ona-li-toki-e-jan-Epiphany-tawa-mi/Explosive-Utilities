##
# Runs the raycast.
#
# Parameters:
#   @s - the raycast marker as a fresh armor stand.
#   Location - at @s.
#   _max_distance (scoreboard: xplsvtlts) - the remaning distance before ending 
#       the raycast.
#
# Returns:
#   An armor stand with the tag "xplsvtlts_raycast_marker" as the raycast 
#       result.
#

scoreboard players set _should_continue xplsvtlts 1

execute if score _max_distance xplsvtlts matches ..0 run scoreboard players set _should_continue xplsvtlts 0
execute if score _should_continue xplsvtlts matches 1 unless block ~ ~ ~ #replaceable run scoreboard players set _should_continue xplsvtlts 0
execute if score _should_continue xplsvtlts matches 1 if entity @e[sort=nearest,limit=1,distance=..0.5,type=!item,tag=!xplsvtlts_raycast_marker] run scoreboard players set _should_continue xplsvtlts 0

execute if score _should_continue xplsvtlts matches 1 run tp @s ^ ^ ^1
execute if score _should_continue xplsvtlts matches 1 run scoreboard players remove _max_distance xplsvtlts 1
execute if score _should_continue xplsvtlts matches 1 at @s run function xplsvtlts:raycast/_raycast_loop

scoreboard players reset _should_continue xplsvtlts