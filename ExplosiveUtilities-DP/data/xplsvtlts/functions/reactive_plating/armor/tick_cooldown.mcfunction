##
# Called every tick on entities with an active reative armor cooldown for decrementing it.
#
# Parameters:
#   @s - the entity.
#

scoreboard players remove @s xplsvtlts_reactive_armor_cooldown 1

# Indicator for when the cooldown is over.
execute if score @s xplsvtlts_reactive_armor_cooldown matches 0 at @s run playsound minecraft:block.fire.extinguish player @a
execute if score @s xplsvtlts_reactive_armor_cooldown matches 0 at @s run particle minecraft:large_smoke ~ ~ ~ 0.25 1 0.25 0.2 40