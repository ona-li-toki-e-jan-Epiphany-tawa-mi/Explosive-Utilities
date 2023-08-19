##
# Lights the furnaces of the pistol kiln for a cool visual effect.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

# Temporary inventory.
setblock ~ ~ ~ minecraft:yellow_shulker_box



# The items have to to be copied from the furnaces to the shulker and back 
#   because using setblock to light the furnaces will clear their inventories.
execute if block ~1 ~ ~ minecraft:blast_furnace run data modify block ~ ~ ~ Items append from block ~1 ~ ~ Items[]
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:blast_furnace run setblock ~ ~ ~ minecraft:blast_furnace[lit=true,facing=east]
execute if block ~1 ~ ~ minecraft:blast_furnace run data modify block ~1 ~ ~ Items append from block ~ ~ ~ Items[]
execute if block ~1 ~ ~ minecraft:blast_furnace run data modify block ~ ~ ~ Items set value []

execute if block ~-1 ~ ~ minecraft:blast_furnace run data modify block ~ ~ ~ Items append from block ~-1 ~ ~ Items[]
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:blast_furnace run setblock ~ ~ ~ minecraft:blast_furnace[lit=true,facing=west]
execute if block ~-1 ~ ~ minecraft:blast_furnace run data modify block ~-1 ~ ~ Items append from block ~ ~ ~ Items[]
execute if block ~-1 ~ ~ minecraft:blast_furnace run data modify block ~ ~ ~ Items set value []

execute if block ~ ~ ~1 minecraft:blast_furnace run data modify block ~ ~ ~ Items append from block ~ ~ ~1 Items[]
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:blast_furnace run setblock ~ ~ ~ minecraft:blast_furnace[lit=true,facing=south]
execute if block ~ ~ ~1 minecraft:blast_furnace run data modify block ~ ~ ~1 Items append from block ~ ~ ~ Items[]
execute if block ~ ~ ~1 minecraft:blast_furnace run data modify block ~ ~ ~ Items set value []

execute if block ~ ~ ~-1 minecraft:blast_furnace run data modify block ~ ~ ~ Items append from block ~ ~ ~-1 Items[]
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:blast_furnace run setblock ~ ~ ~ minecraft:blast_furnace[lit=true,facing=north]
execute if block ~ ~ ~-1 minecraft:blast_furnace run data modify block ~ ~ ~-1 Items append from block ~ ~ ~ Items[]



setblock ~ ~ ~ minecraft:air