##
# Called when a player hits an entity with a thrown reactive trident.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

advancement revoke @s only xplsvtlts:event_listeners/on_hit/hit_with_thrown_reactive_trident



# Finds the correct trident and explodes it.
function xplsvtlts:uuid/get_uuid
scoreboard players set _success xplsvtlts 0
execute as @e[predicate=xplsvtlts:entity/reactive_plating/is_reactive_trident,sort=nearest,tag=!xplsvtlts_exploded_reactive_trident] run function xplsvtlts:reactive_plating/trident/_try_detonate

function xplsvtlts:uuid/reset_get_uuid
scoreboard players reset _success xplsvtlts