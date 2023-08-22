##
# Called when a player crafts a pair of composite leggings.
#
# Parameters:
#   @s - the player.
#

recipe take @s xplsvtlts:smithing/composite_armor/leggings
advancement revoke @s only xplsvtlts:event_listeners/on_craft/composite_armor/craft_leggings
clear @p minecraft:knowledge_book



give @p iron_leggings{display:{Name:'{"text":"Composite Leggings","italic":false}',Lore:['{"text":"Explosive Utilities","color":"blue","italic":false}']},Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:2s}],Trim:{material:"minecraft:copper",pattern:"minecraft:sentry"}} 1