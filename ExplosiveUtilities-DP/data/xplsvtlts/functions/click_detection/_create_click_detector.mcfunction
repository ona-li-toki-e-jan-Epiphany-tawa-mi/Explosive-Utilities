##
# Creates a click detector from the given interaction entity.
#
# Parameters:
#   @s - the interaction.
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID of the
#       detector's owner.
#

data merge entity @s {Tags:["xplsvtlts_click_detector"],width:3f,height:3f}
function xplsvtlts:click_detection/store_uuid_into_click_detector_memory
