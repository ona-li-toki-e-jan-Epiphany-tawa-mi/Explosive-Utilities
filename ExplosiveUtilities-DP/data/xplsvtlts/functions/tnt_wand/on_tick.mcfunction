##
# Ticks players who are holding a tnt wand.
#
# Needs to be called with @s being the player, located at @s.
#

# Ensures the cursor exists if it doesn't already.
execute unless entity @e[type=minecraft:interaction,tag=xplsvtlts_tnt_wand_cursor,limit=1,distance=..1] run summon minecraft:interaction ~ ~ ~ {Tags:["xplsvtlts_tnt_wand_cursor"],width:3f,height:2.5f}