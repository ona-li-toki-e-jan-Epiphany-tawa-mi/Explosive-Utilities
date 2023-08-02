##
# Runs every tick for click detectors.
#
# Parameters:
#   @s - the click detector.
#   Locations - at @s.
#

# Ensures the detector stays around the player.
scoreboard players set _found_player xplsvtlts 0
execute store success score _found_player xplsvtlts run tp @s @p[predicate=xplsvtlts:entity/is_holding_click_detection_enabled_item,distance=..1]

# We can just kill it if it got too far away or the player is no longer needing
#   detection.
execute if score _found_player xplsvtlts matches 0 run kill @s
scoreboard players reset _found_player xplsvtlts