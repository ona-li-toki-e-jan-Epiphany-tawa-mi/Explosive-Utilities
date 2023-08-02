##
# Returns whether the given entity can be corraled by the tnt wand.
#
# Parameters:
#   @s - the entity.
#
# Returns:
#   _corralable (scoreboard: xplsvtlts) - 1 if @s can be corraled, 0 otherwise.
#

scoreboard players set _corralable xplsvtlts 0

execute if entity @s[type=#xplsvtlts:explosive] run scoreboard players set _corralable xplsvtlts 1
# Compatibility with PigsThatGoBoomInTheNight! to corral explosive entities.
execute if score _corralable xplsvtlts matches 0 if score installed pgsthtgbmnthnght matches 1 if entity @s[tag=pgsthtgbmnthnght_explosive] run scoreboard players set _corralable xplsvtlts 1
# Compatibility with Incendiary Bees to corral bees.
execute if score _corralable xplsvtlts matches 0 if score installed incndrybs matches 1 if entity @s[type=minecraft:bee] run scoreboard players set _corralable xplsvtlts 1
