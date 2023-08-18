##
# Smelts the items in the top slot of the input furnaces of the pistol kiln.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:blast_furnace run item modify block ~ ~ ~ container.0 xplsvtlts:smelt_stack
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:blast_furnace run item modify block ~ ~ ~ container.0 xplsvtlts:smelt_stack
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:blast_furnace run item modify block ~ ~ ~ container.0 xplsvtlts:smelt_stack
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:blast_furnace run item modify block ~ ~ ~ container.0 xplsvtlts:smelt_stack
