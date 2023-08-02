##
# Runs every tick on players with an active reactive armor cooldown.
#
# Parameters:
#   @s - the entity.
#

scoreboard players remove @s xplsvtlts_reactive_armor_cooldown 1

execute if score @s xplsvtlts_reactive_armor_cooldown matches ..0 at @s run function xplsvtlts:reactive_plating/armor/_end_cooldown