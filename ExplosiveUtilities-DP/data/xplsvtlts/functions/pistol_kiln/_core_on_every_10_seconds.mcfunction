##
# Runs once every 10 seconds for pistol kiln cores.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

# The multiblock can only face in the cardinal directions.
function xplsvtlts:force_to_cardinal_directions

function xplsvtlts:pistol_kiln/validation/run_structual_validator


# Shows what blocks are missing.
execute if entity @s[tag=!xplsvtlts_was_valid_structure] run function xplsvtlts:pistol_kiln/projection/display_projection
# Shows where invalid blocks are in the structure.
execute if entity @s[tag=!xplsvtlts_was_valid_structure] run function xplsvtlts:pistol_kiln/projection/project_invalid_blocks



