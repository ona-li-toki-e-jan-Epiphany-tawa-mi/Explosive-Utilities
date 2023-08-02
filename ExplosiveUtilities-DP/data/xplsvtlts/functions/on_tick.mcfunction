##
# Called once every tick.
#

execute as @a[predicate=xplsvtlts:entity/is_holding_click_detection_enabled_item] at @s run function xplsvtlts:click_detection/on_tick_player

execute as @e[type=minecraft:trident,nbt={Trident:{tag:{"Reactive":1b}}}] run function xplsvtlts:reactive_plating/trident/on_tick
