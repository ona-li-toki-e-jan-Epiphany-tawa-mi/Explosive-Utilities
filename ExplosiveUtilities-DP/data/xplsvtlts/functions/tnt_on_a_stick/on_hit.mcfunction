##
# Called when a player hits something with a tnt on a stick.
#
# Parameters:
#   @s - the player.
#

advancement revoke @s only xplsvtlts:event_listeners/on_hit/hit_with_tnt_on_a_stick



# One-time use.
execute unless entity @s[gamemode=creative] run clear @s stone_sword{CustomModelData:9200798} 1

# Kablamo.
execute anchored eyes run summon minecraft:tnt ^ ^ ^1