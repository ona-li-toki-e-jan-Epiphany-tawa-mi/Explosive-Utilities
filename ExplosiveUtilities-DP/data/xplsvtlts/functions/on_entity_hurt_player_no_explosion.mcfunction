##
# Called when an entity hurts a player through non-explosive means.
#
# Parameters: 
#   @s - the player.
#   Location - at @s.
#

advancement revoke @s only xplsvtlts:entity_hurt_player_no_explosion

# We don't want explosions to trigger the armor as it might detonate in reaction to itself.
execute unless score @s xplsvtlts_reactive_armor_cooldown matches 1.. run function xplsvtlts:reactive_plating/armor/try_detonate