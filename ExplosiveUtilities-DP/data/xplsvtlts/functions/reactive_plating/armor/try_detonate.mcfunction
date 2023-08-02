##
# Called when an entity is damaged and doesn't have an active reactive armor 
#   cooldown.
# Used to check if they have reactive armor and whether it should detonate.
#
# Parameters:
#   @s - the entity to check.
#   Location - at @s.

# Used to scale detonation abilities with how many reactive piecies are worn.
scoreboard players set _reactive_level xplsvtlts 0
execute if predicate xplsvtlts:entity/reactive_plating/is_helmet_reactive run scoreboard players add _reactive_level xplsvtlts 1
execute if predicate xplsvtlts:entity/reactive_plating/is_chestplate_reactive run scoreboard players add _reactive_level xplsvtlts 1
execute if predicate xplsvtlts:entity/reactive_plating/is_leggings_reactive run scoreboard players add _reactive_level xplsvtlts 1
execute if predicate xplsvtlts:entity/reactive_plating/is_boots_reactive run scoreboard players add _reactive_level xplsvtlts 1

execute if score _reactive_level xplsvtlts matches 1.. run function xplsvtlts:reactive_plating/armor/_detonate
scoreboard players reset _reactive_level xplsvtlts