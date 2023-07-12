##
# Damages an anvil, possibly destorying it.
#
# Parameters:
#   Location - the location of the anvil.
#

execute if block ~ ~ ~ minecraft:damaged_anvil run setblock ~ ~ ~ air 

execute if block ~ ~ ~ minecraft:chipped_anvil[facing=north] run setblock ~ ~ ~ damaged_anvil[facing=north]
execute if block ~ ~ ~ minecraft:chipped_anvil[facing=east] run setblock ~ ~ ~ damaged_anvil[facing=east]
execute if block ~ ~ ~ minecraft:chipped_anvil[facing=west] run setblock ~ ~ ~ damaged_anvil[facing=west]
execute if block ~ ~ ~ minecraft:chipped_anvil[facing=south] run setblock ~ ~ ~ damaged_anvil[facing=south]

execute if block ~ ~ ~ minecraft:anvil[facing=north] run setblock ~ ~ ~ chipped_anvil[facing=north]
execute if block ~ ~ ~ minecraft:anvil[facing=east] run setblock ~ ~ ~ chipped_anvil[facing=east]
execute if block ~ ~ ~ minecraft:anvil[facing=west] run setblock ~ ~ ~ chipped_anvil[facing=west]
execute if block ~ ~ ~ minecraft:anvil[facing=south] run setblock ~ ~ ~ chipped_anvil[facing=south]
