##
# Called when a player crafts a composite helmet.
#
# Parameters:
#   @s - the player.
#

recipe take @s xplsvtlts:smithing/composite_armor/helmet
advancement revoke @s only xplsvtlts:event_listeners/on_craft/composite_armor/craft_helmet
clear @p minecraft:knowledge_book



give @p iron_helmet{display:{Name:'{"text":"Composite Helmet","italic":false}'},Enchantments:[{id:"minecraft:blast_protection",lvl:2s}],Trim:{material:"minecraft:copper",pattern:"minecraft:sentry"}} 1