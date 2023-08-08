##
# Runs once every second for combustion forge cores.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

# The multiblock can only face in the cardinal directions.
function xplsvtlts:force_to_cardinal_directions

function xplsvtlts:combustion_forge/validation/run_structual_validator


# Shows what blocks are missing.
execute if entity @s[tag=!xplsvtlts_was_valid_structure] run function xplsvtlts:combustion_forge/projection/display_projection
execute if entity @s[tag=!xplsvtlts_was_valid_structure] run function xplsvtlts:combustion_forge/projection/project_invalid_blocks



