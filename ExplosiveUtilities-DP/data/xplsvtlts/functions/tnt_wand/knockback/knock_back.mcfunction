##
# Applies the knockback to an entity relative to the position stored in the third vector.
#
# Needs to be called with the entity being @, located at @s.
#

# Generates desired motion away from marker.
function xplsvtlts:vector3d/load/3
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/subtract
# A little verticality to feel like Minecraft's normal knockback.
scoreboard players set _y1 xplsvtlts 7500
function xplsvtlts:vector3d/normalize
scoreboard players set _scalar xplsvtlts 4
function xplsvtlts:vector3d/scalar_multiply

# If the entity is a fireball we need to set it's acceleration or else nothing will happen.
execute if data entity @s power run function xplsvtlts:vector3d/set_power

# Adds motion to the entity's current motion.
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/get_motion
function xplsvtlts:vector3d/add

function xplsvtlts:vector3d/set_motion



scoreboard players reset _scalar xplsvtlts