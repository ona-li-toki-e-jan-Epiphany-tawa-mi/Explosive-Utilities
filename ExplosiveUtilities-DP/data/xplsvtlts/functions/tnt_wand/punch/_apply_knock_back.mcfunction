##
# Causes all of the explosive punch knockback markers to apply their knockback
#   and then be killed.
# Needs to be scheduled after 1 tick so that the damage from the actual 
#   explosion is applied before the entity is out of range from the knockback.
#

execute as @e[type=minecraft:armor_stand,tag=xplsvtlts_punch_knockback_marker] at @s run function xplsvtlts:tnt_wand/punch/_knock_back_nearby