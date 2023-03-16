##
# Ticks tnt wand cursors.
#
# Needs to be called with @s being the cursor, located at @s.


execute store success score _found_player xplsvtlts run tp @s @p[nbt={SelectedItem:{id:"minecraft:stone_pickaxe",tag:{CustomModelData:417106215}}},distance=..1]
tp @s ~ ~1 ~

execute if score _found_player xplsvtlts matches 0 run kill @s
scoreboard players reset _found_player xplsvtlts