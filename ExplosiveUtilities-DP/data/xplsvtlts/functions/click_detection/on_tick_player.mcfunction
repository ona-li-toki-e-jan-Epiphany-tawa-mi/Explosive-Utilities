##
# Runs every tick for players who are holding a click-detection enabled item 
#   (see predicate xplsvtlts:is_holding_click_detection_enabled_item).
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

execute unless entity @e[type=minecraft:interaction,tag=xplsvtlts_click_detector,distance=..1] run summon minecraft:interaction ~ ~ ~ {Tags:["xplsvtlts_click_detector"],width:3f,height:3f}

# Kickstarts click detector tick loop (no problem if it's already running, idempotent and all.)
schedule function xplsvtlts:click_detection/tick_click_detectors 1t