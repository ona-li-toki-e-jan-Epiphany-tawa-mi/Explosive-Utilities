##
# Tests whether the owner of the given entity has the same UUID as the given UUID and stores the result.
#
# Parameters:
#   @s - the entity to get the UUID from.
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID to compare with.
# 
# Returns:
#   _success (scoreboard: xplsvtlts) - whether the UUIDs are the same
#

execute store result score _comapare_uuid0 xplsvtlts run data get entity @s Owner[0]
execute store result score _comapare_uuid1 xplsvtlts run data get entity @s Owner[1]
execute store result score _comapare_uuid2 xplsvtlts run data get entity @s Owner[2]
execute store result score _comapare_uuid3 xplsvtlts run data get entity @s Owner[3]

scoreboard players set _success xplsvtlts 1
execute unless score _uuid0 xplsvtlts = _comapare_uuid0 xplsvtlts run scoreboard players set _success xplsvtlts 0
execute unless score _uuid1 xplsvtlts = _comapare_uuid1 xplsvtlts run scoreboard players set _success xplsvtlts 0
execute unless score _uuid2 xplsvtlts = _comapare_uuid2 xplsvtlts run scoreboard players set _success xplsvtlts 0
execute unless score _uuid3 xplsvtlts = _comapare_uuid3 xplsvtlts run scoreboard players set _success xplsvtlts 0

scoreboard players reset _comapare_uuid0 xplsvtlts
scoreboard players reset _comapare_uuid1 xplsvtlts
scoreboard players reset _comapare_uuid2 xplsvtlts
scoreboard players reset _comapare_uuid3 xplsvtlts