##
# Runs once every 10 seconds
#

# Destroys any leftover projections from last second.
function xplsvtlts:pistol_kiln/projection/cleanup

execute as @e[predicate=xplsvtlts:entity/is_pistol_kiln_core] at @s run function xplsvtlts:pistol_kiln/_core_on_every_10_seconds