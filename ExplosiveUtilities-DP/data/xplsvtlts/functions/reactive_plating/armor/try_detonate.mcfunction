##
# Called when an entity is damaged and doesn't have an active reactive armor cooldown.
# Used to check if they have reactive armor and whether it should detonate.
#
# Parameters:
#   @s - the entity to check.
#   Location - at @s.

scoreboard players set _reactive_level xplsvtlts 0
execute if predicate xplsvtlts:is_helmet_reactive run scoreboard players add _reactive_level xplsvtlts 1
execute if predicate xplsvtlts:is_chestplate_reactive run scoreboard players add _reactive_level xplsvtlts 1
execute if predicate xplsvtlts:is_leggings_reactive run scoreboard players add _reactive_level xplsvtlts 1
execute if predicate xplsvtlts:is_boots_reactive run scoreboard players add _reactive_level xplsvtlts 1

execute if score _reactive_level xplsvtlts matches 1.. run function xplsvtlts:reactive_plating/armor/detonate
scoreboard players reset _reactive_level xplsvtlts