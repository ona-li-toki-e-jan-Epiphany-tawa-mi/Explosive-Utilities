##
# Gets the UUID of an entity and stores it.
# Make sure to call "function xplsvtlts:uuid/reset_get_uuid" to reset the results after they are no longer 
#   needed.
#
# Parameters: 
#   @s - the entity.
#
# Returns: 
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID of the entity.


execute store result score _uuid0 xplsvtlts run data get entity @s UUID[0]
execute store result score _uuid1 xplsvtlts run data get entity @s UUID[1]
execute store result score _uuid2 xplsvtlts run data get entity @s UUID[2]
execute store result score _uuid3 xplsvtlts run data get entity @s UUID[3]