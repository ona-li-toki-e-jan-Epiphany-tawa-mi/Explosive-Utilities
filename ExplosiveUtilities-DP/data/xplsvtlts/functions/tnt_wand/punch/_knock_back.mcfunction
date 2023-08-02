##
# Applies the explosive punch knockback to the entity relative to the position 
#   stored in vector register 3.
#
# Parameters:
#   @s - the entity.
#   Location - at @s.
#   Vector register 3 - the position of the source of the knockback
#

# Generates desired motion away from marker.
function xplsvtlts:vector3d/load/3
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/subtract
# A little verticality to feel like Minecraft's normal knockback. (~7.5 
#   unscaled.)
scoreboard players set _y1 xplsvtlts 53
function xplsvtlts:vector3d/normalize
scoreboard players set _scalar xplsvtlts 4
function xplsvtlts:vector3d/scalar_multiply

# If the entity is a fireball, we need to set it's acceleration or else nothing 
#   will happen.
execute if data entity @s power run function xplsvtlts:vector3d/set_power

# Adds motion to the entity's current motion.
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/get_motion
function xplsvtlts:vector3d/add

function xplsvtlts:vector3d/set_motion



scoreboard players reset _scalar xplsvtlts