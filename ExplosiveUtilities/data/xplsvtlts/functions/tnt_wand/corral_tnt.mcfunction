##
# Corrals tnt in front of the player, allowing them to control it.
# Sets _corraled_tnt to 1, which can be used to check if any tnt was corraled. Make sure to reset!
#
# Needs to be called with @s being the tnt, located where the tnt should be corraled.
#

# Corrals the tnt to the front of the wand.
tp @s ~ ~ ~

# Increases the fuse time to make sure the tnt doesn't blow up on the user.
execute store result score _fuse xplsvtlts run data get entity @s Fuse
# The conditional here just makes sure that we don't make a stupidly long fuse.
execute if score _fuse xplsvtlts matches ..80 run scoreboard players add _fuse xplsvtlts 4
execute store result entity @s Fuse short 1.0 run scoreboard players get _fuse xplsvtlts
scoreboard players reset _fuse xplsvtlts

scoreboard players set _corraled_tnt xplsvtlts 1