##
# Applies the knockback from an explosive punch.
# Is meant to be called after 1 tick by the sceduler.
#

execute as @e[type=minecraft:armor_stand,tag=xplsvtlts_punch_knockback_marker] at @s run function xplsvtlts:tnt_wand/knockback/knock_back_nearby