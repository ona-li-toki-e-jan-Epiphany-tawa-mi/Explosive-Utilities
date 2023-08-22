##
# Creates a dynamite entity from the given armor stand with the given motion.
#
# Parameters:
#   @s - the armor stand.
#   Location - at @s.
#   Vector register 1 - the motion to apply to the dynamite.
#

data merge entity @s {Tags:["xplsvtlts_dynamite"],Invisible:1b,Invulnerable:1b,Small:1b}
function xplsvtlts:vector3d/set_motion
scoreboard players operation @s xplsvtlts_dynamite_fuse = dynamite_fuse_time xplsvtlts

playsound minecraft:entity.tnt.primed player @a ~ ~ ~

# Kickstarts dynamite ticking.
schedule function xplsvtlts:dynamite/tick_dynamite 1t