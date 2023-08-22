##
# Called when a player crafts a composite chestplate.
#
# Parameters:
#   @s - the player.
#

recipe take @s xplsvtlts:smithing/composite_armor/chestplate
advancement revoke @s only xplsvtlts:event_listeners/on_craft/composite_armor/craft_chestplate
clear @p minecraft:knowledge_book


give @p iron_chestplate{display:{Name:'{"text":"Composite Chestplate","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:2s}],Trim:{material:"minecraft:copper",pattern:"minecraft:sentry"}} 1