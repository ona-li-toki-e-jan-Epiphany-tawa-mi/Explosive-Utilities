##
# Runs once every second on valid, but inactive, pistol kilns.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

# The kiln can only try to start up once there are items in the input furnaces.
execute unless block ~1 ~ ~ minecraft:blast_furnace{Items:[{Slot:0b}]} unless block ~-1 ~ ~ minecraft:blast_furnace{Items:[{Slot:0b}]} unless block ~ ~ ~1 minecraft:blast_furnace{Items:[{Slot:0b}]} unless block ~ ~ ~-1 minecraft:blast_furnace{Items:[{Slot:0b}]} run return 0



# Tries to consume gunpowder as fuel to start up.
function xplsvtlts:pistol_kiln/try_consume_fuel

# Marks that the kiln is now running.
execute if score _consumed_fuel xplsvtlts matches 1 run tag @s add xplsvtlts_is_running
# A E S T E T I C or smth idk.
execute if score _consumed_fuel xplsvtlts matches 1 run function xplsvtlts:pistol_kiln/ideling/_light_furnaces
# Kickstarts ticking for active kilns.
execute if score _consumed_fuel xplsvtlts matches 1 run schedule function xplsvtlts:pistol_kiln/processing/tick_active_cores 1t



scoreboard players reset _consumed_fuel xplsvtlts