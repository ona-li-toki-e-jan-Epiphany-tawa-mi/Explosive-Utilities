##
# Applies the knockback to an entity relative to the position stored in the third vector.
#
# Needs to be called with the entity being @, located at @s.
#

# Generates desired motion away from marker.
# TODO normalize movement vector so that knockback is constant based on distance from marker.
function xplsvtlts:vector3d/load/3
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/subtract
# A little verticality to feel like Minecraft's normal knockback.
scoreboard players set _y1 xplsvtlts 7500
function xplsvtlts:vector3d/normalize
scoreboard players set _scalar xplsvtlts 4
function xplsvtlts:vector3d/scalar_multiply

# Adds motion to the entity's current motion.
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/get_motion
function xplsvtlts:vector3d/add

function xplsvtlts:vector3d/set_motion



scoreboard players reset _scalar xplsvtlts