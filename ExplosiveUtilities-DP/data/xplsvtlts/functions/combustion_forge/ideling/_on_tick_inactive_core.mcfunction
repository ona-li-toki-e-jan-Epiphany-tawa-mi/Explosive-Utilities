##
# Runs once every second on valid, but inactive, combustion forges.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

# The forge can only try to start up once the door is closed.
execute unless block ^ ^ ^1 minecraft:iron_trapdoor[powered=true] run return 0



# Tries to consume tnt as fuel to start up.
function xplsvtlts:combustion_forge/ideling/_try_consume_fuel

# Marks that the forge is now running.
execute if score _consumed_fuel xplsvtlts matches 1 run tag @s add xplsvtlts_is_running
# Redstone I/O to indicate that the forge is running for automation.
execute if score _consumed_fuel xplsvtlts matches 1 positioned ^-1 ^-1 ^-1 if block ~ ~ ~ minecraft:target run setblock ~ ~ ~ minecraft:target[power=15]

# Kickstarts ticking for active forges.
execute if score _consumed_fuel xplsvtlts matches 1 run schedule function xplsvtlts:combustion_forge/processing/tick_active_cores 1t



scoreboard players reset _consumed_fuel xplsvtlts