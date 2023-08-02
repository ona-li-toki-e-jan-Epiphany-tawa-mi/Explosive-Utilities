##
# Runs every tick on entities with a frozen fuse.
# Increments the fuse of an explosive entity to prevent it from exploding.
#
# Parameters:
#   @s - the entity with a frozen fuse.
#

execute store result score _fuse xplsvtlts run data get entity @s Fuse
# The conditional here just makes sure that we don't make a stupidly long fuse.
execute if score _fuse xplsvtlts matches ..80 run scoreboard players add _fuse xplsvtlts 1
execute store result entity @s Fuse short 1.0 run scoreboard players get _fuse xplsvtlts

scoreboard players reset _fuse xplsvtlts



scoreboard players remove @s xplsvtlts_fuse_freeze_time 1

execute if score @s xplsvtlts_fuse_freeze_time matches ..0 run function xplsvtlts:fuse_freezing/on_fuse_thaw