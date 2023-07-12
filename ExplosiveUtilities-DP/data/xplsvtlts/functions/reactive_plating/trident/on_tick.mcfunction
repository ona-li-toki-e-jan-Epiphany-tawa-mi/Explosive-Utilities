##
# Called for each reactive trident every tick.
#
# Parameters:
#   @s - the reactive trident.
#

# Explodes the trident when it hits the ground.
execute if entity @s[tag=!xplsvtlts_exploded_reactive_trident,nbt={"inGround":1b}] run function xplsvtlts:reactive_plating/trident/detonate