##
# Called when a player uses a Carrot On A Stick based item.
#
# Needs to be called with @s being the player, located at @s.
#

execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:417106215}}}] run function xplsvtlts:tnt_wand/on_use

# Resets usage count.
scoreboard players remove @s xplsvtlts_use_item 1