##
# Creates the explosion and and a maker used to create the knockback effect.
# The supplied creeper is used to make the explosion and mark the location to
#   source the knockback from.
#
# Parameters:
#   @s - the creeper.
#   Location - at @s.
#

# Modifies the creeper to make the actual explosion. The explosion power is 
#   toned down so the player doesn't Minecraft themselves.
data merge entity @s {ExplosionRadius:2b,Fuse:0s,"CustomName":'{"text":"Explosion Wand Explosive Punch"}',CustomNameVisible:false}

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["xplsvtlts_punch_knockback_marker"]}
schedule function xplsvtlts:tnt_wand/punch/_apply_knock_back 1t
