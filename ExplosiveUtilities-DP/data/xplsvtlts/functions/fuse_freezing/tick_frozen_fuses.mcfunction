##
# Runs once every tick whilst entities with a frozen fuse still exist.
# Needs to be kickstarted when an entity's fuse is frozen.
#
# Entities can be marked with the tag "xplsvtlts_gravity_on_thaw" so that their
#   gravity is restored upon thawing (meant for tnt wand.)
#

scoreboard players set _exists_players_with_cooldown xplsvtlts 0
execute store success score _exists_players_with_cooldown xplsvtlts run execute as @e[scores={xplsvtlts_fuse_freeze_time=1..}] run function xplsvtlts:fuse_freezing/_on_frozen_fuse_tick

execute if score _exists_players_with_cooldown xplsvtlts matches 1 run schedule function xplsvtlts:fuse_freezing/tick_frozen_fuses 1t

scoreboard players reset _exists_players_with_cooldown xplsvtlts