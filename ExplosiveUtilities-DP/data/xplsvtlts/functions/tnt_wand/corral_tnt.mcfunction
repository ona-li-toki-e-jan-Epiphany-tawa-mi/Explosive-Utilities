##
# Corrals tnt in front of the player, allowing them to control it.
# Sets _corraled_tnt to 1, which can be used to check if any tnt was corraled. Make sure to reset! 
#
# Needs to be called with @s being the tnt, located where the tnt should be corraled. Also, the third vector will need to contain the 
#   corraling position.
# 

# Corrals the tnt to the front of the wand.
function xplsvtlts:vector3d/get_positon
function xplsvtlts:vector3d/swap
function xplsvtlts:vector3d/load/3
function xplsvtlts:vector3d/subtract
# Since the motion is based on the distance of the tnt to the corral position we get tnt throwing for free.
scoreboard players set _scalar xplsvtlts 6
function xplsvtlts:vector3d/scalar_divide
function xplsvtlts:vector3d/set_motion

# Sets the tnt to have no gravity (if that isn't already the case) in case of lag and sets it up to return to normal on thawing, i.e.
#   when it is no longer being corraled
execute store result score _has_gravity xplsvtlts run data get entity @s NoGravity 
execute if score _has_gravity xplsvtlts matches 0 run data modify entity @s NoGravity set value true
execute if score _has_gravity xplsvtlts matches 0 run tag @s add xplsvtlts_gravity_on_thaw

# Freezes the fuse to make sure the tnt doesn't blow up in the user's face.
scoreboard players set @s xplsvtlts_fuse_freeze_time 14

playsound minecraft:entity.phantom.flap player @a ~ ~ ~ 1.0 0.1
particle minecraft:portal ~ ~ ~ 0.25 0.25 0.25 0.1 10

scoreboard players set _corraled_tnt xplsvtlts 1



scoreboard players reset _has_gravity xplsvtlts