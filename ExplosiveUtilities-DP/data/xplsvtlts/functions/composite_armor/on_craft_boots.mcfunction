##
# Called when a player crafts a pair of composite boots.
#
# Parameters:
#   @s - the player.
#

recipe take @s xplsvtlts:smithing/composite_armor/boots
advancement revoke @s only xplsvtlts:event_listeners/on_craft/composite_armor/craft_boots
clear @p minecraft:knowledge_book


give @p iron_boots{display:{Name:'{"text":"Composite Boots","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:2s}],Trim:{material:"minecraft:copper",pattern:"minecraft:sentry"}} 1