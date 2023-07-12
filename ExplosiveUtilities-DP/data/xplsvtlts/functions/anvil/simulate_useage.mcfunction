##
# Simulates the usage of an anvil, playing sounds and possibly breaking it.
#
# Parameters:
#   Location - the location of the anvil.
#

execute if predicate xplsvtlts:should_anvil_get_damaged run function xplsvtlts:anvil/damage

execute if block ~ ~ ~ #anvil run playsound minecraft:block.anvil.use block @a
execute unless block ~ ~ ~ #anvil run playsound minecraft:block.anvil.destroy block @a
