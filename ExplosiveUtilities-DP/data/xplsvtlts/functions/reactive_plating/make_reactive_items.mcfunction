##
# Runs on reactive plating item entities that are on an anvil, ready to upgrade nearby items.
#
# Parameters:
#   @s - the reactive plating item entity.
#   Location - at @s.
#

# Attempts to make nearby items reactive.
scoreboard players set _made_reactive xplsvtlts 0
execute as @e[type=item,distance=..1] run function xplsvtlts:reactive_plating/try_make_reactive

# Immersion baby.
execute if score _made_reactive xplsvtlts matches 1 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.5 25 
execute if score _made_reactive xplsvtlts matches 1 positioned ~ ~-0.25 ~ run function xplsvtlts:anvil/simulate_useage

# Each plating can only upgrade 1 item.
execute if score _made_reactive xplsvtlts matches 1 run kill @s
scoreboard players reset _made_reactive xplsvtlts 