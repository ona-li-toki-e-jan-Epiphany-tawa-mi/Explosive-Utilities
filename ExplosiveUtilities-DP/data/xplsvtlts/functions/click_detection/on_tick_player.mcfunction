##
# Runs every tick for players who are holding a click-detection enabled item 
#   (see predicate xplsvtlts:is_holding_click_detection_enabled_item).
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

function xplsvtlts:uuid/get_uuid
# Players' UUIDs need to be stored inside the memory for the click detectors
#   to compare with when finding their owner.
function xplsvtlts:click_detection/store_uuid_into_click_detector_memory

execute unless entity @e[limit=1,type=minecraft:interaction,tag=xplsvtlts_click_detector,predicate=xplsvtlts:entity/does_uuid_match_click_detector_memory] summon minecraft:interaction run function xplsvtlts:click_detection/_create_click_detector

function xplsvtlts:uuid/reset_get_uuid



# Kickstarts click detector tick loop (no problem if it's already running, idempotent and all.)
schedule function xplsvtlts:click_detection/tick_click_detectors 1t