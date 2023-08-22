##
# Called when a player uses dynamite.
#
# Parameters:
#   @s - the player.
#

advancement revoke @s only xplsvtlts:event_listeners/on_use/use_dynamite
execute if entity @s[gamemode=!creative] run clear @s minecraft:armor_stand{CustomModelData:15704532} 1



# Creates thrown dynamite entity.
function xplsvtlts:vector3d/get_rotation_vector
scoreboard players set _scalar xplsvtlts 3
function xplsvtlts:vector3d/scalar_multiply
scoreboard players set _scalar xplsvtlts 2
function xplsvtlts:vector3d/scalar_divide
execute anchored eyes positioned ^ ^ ^ summon minecraft:armor_stand run function xplsvtlts:dynamite/_make_dynamite



scoreboard players reset _scalar xplsvtlts
function xplsvtlts:vector3d/reset_memory