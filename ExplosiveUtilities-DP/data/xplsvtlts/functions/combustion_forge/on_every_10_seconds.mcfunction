##
# Runs once every 10 seconds
#

# Destroys any leftover projections from last second.
function xplsvtlts:combustion_forge/projection/cleanup

execute as @e[predicate=xplsvtlts:entity/is_combustion_forge_core] at @s run function xplsvtlts:combustion_forge/_core_on_every_10_seconds