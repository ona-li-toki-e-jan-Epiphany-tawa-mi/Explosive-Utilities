##
# Runs every tick for click detectors.
#
# Parameters:
#   @s - the click detector.
#   Locations - at @s.
#

# Preperation for finding the right player using the predicate
#   xplsvtlts:entity/does_uuid_match_click_detector_memory.
function xplsvtlts:click_detection/load_uuid_from_click_detector_memory
# Ensures the detector stays around the player.
scoreboard players set _found_player xplsvtlts 0
execute store success score _found_player xplsvtlts run tp @s @a[limit=1,predicate=xplsvtlts:entity/does_uuid_match_click_detector_memory,predicate=xplsvtlts:entity/is_holding_click_detection_enabled_item]

# We can just kill it if it got too far away or the player is no longer needing
#   detection.
execute if score _found_player xplsvtlts matches 0 run kill @s



scoreboard players reset _found_player xplsvtlts
function xplsvtlts:uuid/reset_get_uuid