##
# Dumps any items in the pistol kiln's input furnaces out as item entities 
#   inside it.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

# This system relies on using a modified version of the yellow shulker box's 
#   loot table that causes it to drop its contents, but not itself, if mined 
#   with minecraft:air{drop_contents:1b}. This nbt data cannot occur naturally, 
#   but can be supplied in the loot command.
setblock ~ ~ ~ minecraft:yellow_shulker_box



# We copy the items from the furnace into the shulker box, clear it, use the 
#   loot table to dump out the items, clear the shulker box, rinse and repeat
#   for the entire grid.
data modify block ~ ~ ~ Items append from block ~1 ~ ~ Items[]
data modify block ~1 ~ ~ Items set value []
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:air{drop_contents:1b}
data modify block ~ ~ ~ Items set value []

data modify block ~ ~ ~ Items append from block ~-1 ~ ~ Items[]
data modify block ~-1 ~ ~ Items set value []
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:air{drop_contents:1b}
data modify block ~ ~ ~ Items set value []

data modify block ~ ~ ~ Items append from block ~ ~ ~1 Items[]
data modify block ~ ~ ~1 Items set value []
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:air{drop_contents:1b}
data modify block ~ ~ ~ Items set value []

data modify block ~ ~ ~ Items append from block ~ ~ ~-1 Items[]
data modify block ~ ~ ~-1 Items set value []
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:air{drop_contents:1b}
data modify block ~ ~ ~ Items set value []



setblock ~ ~ ~ minecraft:air