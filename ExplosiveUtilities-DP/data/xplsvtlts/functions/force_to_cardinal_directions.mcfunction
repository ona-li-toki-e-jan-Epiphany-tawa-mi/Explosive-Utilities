##
# Forces the given entity to be rotated to face the nearest cardinal direction.
#
# Parameters:
#   @s - the entity.
#

execute if entity @s[y_rotation=45.0..135.0] run tp @s ~ ~ ~ 90.0 0.0

execute if entity @s[y_rotation=-45.0..45.0] run tp @s ~ ~ ~ 0.0 0.0

execute if entity @s[y_rotation=-135.0..-45.0] run tp @s ~ ~ ~ -90.0 0.0

execute if entity @s[y_rotation=135.0..225.0] run tp @s ~ ~ ~ 180.0 0.0