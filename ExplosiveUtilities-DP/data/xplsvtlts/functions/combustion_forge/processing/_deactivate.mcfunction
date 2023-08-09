##
# Deactivates a running combustion forge, marking it inactive, and updating
#   redstone I/O, starting recipe checking, and ejecting results and left over
#   items.
#
# Parameters: 
#   @s - the combustion forge core.
#   Location - at @s.
#

# Updates redstone I/0 to indicate it is no longer running.
execute positioned ^-1 ^-1 ^-1 if block ~ ~ ~ minecraft:target run setblock ~ ~ ~ minecraft:target[power=0]
# Updates redstone I/0 to indicate it is no longer finished processing if it was.
execute positioned ^1 ^-1 ^-1 if block ~ ~ ~ minecraft:target run setblock ~ ~ ~ minecraft:target[power=0]



# TODO Recipe system.

# Dumps any leftover items in the crafting grid out inside the combustion forge.
function xplsvtlts:combustion_forge/processing/_move_leftovers_to_output

# TODO Create blast from inside to splode out items.



# Marks inactive.
tag @s remove xplsvtlts_is_running
# Kickstarts tick loop for inactive forges.
schedule function xplsvtlts:combustion_forge/tick_inactive_cores 1s
# Resets runtime for next time the forge runs.
scoreboard players reset @s xplsvtlts_combustion_forge_runtime