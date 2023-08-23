##
# Explodes the blow chest trap, destorying the chest and consuming the trap.
#
# Parameters:
#   Location - at the blow chest.
#

function xplsvtlts:blow_chest/_consume_trap
scoreboard players reset _consumed_trap xplsvtlts

setblock ~ ~ ~ minecraft:air destroy

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.3 15
playsound minecraft:entity.generic.explode block @a ~ ~ ~