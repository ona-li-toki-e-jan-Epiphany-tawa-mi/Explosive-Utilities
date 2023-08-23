##
# Called when a player opens a blow chest.
#
# Parameters:
#   @s - the player.
#

advancement revoke @s only xplsvtlts:event_listeners/on_use/open_blow_chest



# Raycasts out to try and find the blow chest the player is looking at. If not 
#   found, we just leave whatever there be as nothing else can be done.
scoreboard players set _max_distance xplsvtlts 6
scoreboard players set _collide_with_entities xplsvtlts 0
function xplsvtlts:raycast/raycast_from_entity
execute at @e[type=minecraft:armor_stand,tag=xplsvtlts_raycast_marker,limit=1,sort=nearest] if predicate xplsvtlts:block/is_blow_chest run function xplsvtlts:blow_chest/_explode_chest
function xplsvtlts:raycast/cleanup
scoreboard players reset _max_distance xplsvtlts
scoreboard players reset _collide_with_entities xplsvtlts