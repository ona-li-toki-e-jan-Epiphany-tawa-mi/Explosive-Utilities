##
# Called when a player hits something with a tnt on a stick.
#
# Needs to be called with @s being the player.
#

advancement revoke @s only xplsvtlts:hit_with_tnt_on_a_stick



# One-time use.
execute unless entity @s[gamemode=creative] run clear @s stone_sword{CustomModelData:252573366} 1

# Kablamo.
execute anchored eyes run summon minecraft:tnt ^ ^ ^1