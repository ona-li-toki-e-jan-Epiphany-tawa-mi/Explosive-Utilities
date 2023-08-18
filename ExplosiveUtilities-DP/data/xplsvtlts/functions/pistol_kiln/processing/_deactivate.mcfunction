##
# Deactivates a running pistol kiln, marking it inactive, ejecting results and 
#   left over items.
#
# Parameters: 
#   @s - the pistol kiln core.
#   Location - at @s.
#

# Smelts all of the items in the inventory furnaces.
function xplsvtlts:pistol_kiln/processing/_smelt
# Dumps the inventory into the center.
function xplsvtlts:pistol_kiln/processing/_move_input_to_output
# Fire any outputted items out of the kiln.
function xplsvtlts:pistol_kiln/processing/_fire

function xplsvtlts:pistol_kiln/processing/_mark_inactive