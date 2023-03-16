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
scoreboard players set _scalar xplsvtlts 3
function xplsvtlts:vector3d/scalar_divide
function xplsvtlts:vector3d/set_motion

# Increases the fuse time to make sure the tnt doesn't blow up on the user.
execute store result score _fuse xplsvtlts run data get entity @s Fuse
# The conditional here just makes sure that we don't make a stupidly long fuse.
execute if score _fuse xplsvtlts matches ..80 run scoreboard players add _fuse xplsvtlts 4
execute store result entity @s Fuse short 1.0 run scoreboard players get _fuse xplsvtlts
scoreboard players reset _fuse xplsvtlts

scoreboard players set _corraled_tnt xplsvtlts 1