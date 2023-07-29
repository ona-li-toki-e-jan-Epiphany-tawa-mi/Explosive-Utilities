##
# Called when players left click using a tnt wand.
#
# Needs to be called with @s being the player, located at @s.
#

advancement revoke @s only xplsvtlts:event_listeners/on_hit/hit_with_tnt_wand


# Explosive punch ability.
execute unless score @s xplsvtlts_tnt_wand_punch_cooldown matches 1.. run function xplsvtlts:tnt_wand/try_explosive_punch