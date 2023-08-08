##
# Called once every tick.
#

execute as @a[predicate=xplsvtlts:entity/is_holding_click_detection_enabled_item] at @s run function xplsvtlts:click_detection/on_tick_player

execute as @e[predicate=xplsvtlts:entity/reactive_plating/is_reactive_trident] run function xplsvtlts:reactive_plating/trident/on_tick
