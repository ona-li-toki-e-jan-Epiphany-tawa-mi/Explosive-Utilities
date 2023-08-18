##
# Marks a pistol kiln as inactive, putting it in idle mode.
#
# Parameters:
#   @s - the pistol kiln core.
#

# Marks inactive.
tag @s remove xplsvtlts_is_running
# Kickstarts tick loop for inactive kilns.
schedule function xplsvtlts:pistol_kiln/ideling/tick_inactive_cores 1s
# Resets runtime for next time the kiln runs.
scoreboard players reset @s xplsvtlts_pistol_kiln_runtime