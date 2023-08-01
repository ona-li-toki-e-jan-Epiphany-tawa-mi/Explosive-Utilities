##
# Runs every tick while tick detectors exist, used to run their on tick method(s).
#

# We keep the loop running while there are click detectors in existance stopping 
#   when they are not. If the loop stopped previously, it will just be restarted 
#   once new detectors are created.
scoreboard players set _exists_detectors xplsvtlts 0
execute store success score _exists_detectors xplsvtlts run execute as @e[type=minecraft:interaction,tag=xplsvtlts_click_detector] at @s run function xplsvtlts:click_detection/on_tick_click_detector

execute if score _exists_detectors xplsvtlts matches 1 run schedule function xplsvtlts:click_detection/tick_click_detectors 1t
scoreboard players reset _exists_detectors xplsvtlts
