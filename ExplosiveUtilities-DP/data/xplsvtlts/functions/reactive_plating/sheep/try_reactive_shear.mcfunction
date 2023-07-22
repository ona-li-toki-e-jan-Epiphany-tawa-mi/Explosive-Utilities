##
# The advancement player_interacted_with_entity shows the entity after it has been interacted with.
# Because of this, we cannot directly differentiate between a sheep sheared through the interaction,
#   or a sheep that was already sheared beforehand.
# This solution relies on placing a tag on sheep that were already sheared to isolate them, so that this
#   only reacts to sheep that were sheared through the interaction that called this function.
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

advancement revoke @s only xplsvtlts:use_reactive_shears_on_sheep



execute if entity @e[type=minecraft:sheep,tag=!xplsvtlts_already_sheared,sort=nearest,limit=1,nbt={"Sheared":1b},distance=..6] run function xplsvtlts:reactive_plating/on_use_reactive_item
tag @e[type=minecraft:sheep,tag=!xplsvtlts_already_sheared,sort=nearest,limit=1,nbt={"Sheared":1b},distance=..6] add xplsvtlts_already_sheared