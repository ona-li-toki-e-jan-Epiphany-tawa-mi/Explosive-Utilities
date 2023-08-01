##
# Runs when a player crafts a tnt wand.
#
# Needs to be called with @s being the player.
#

recipe take @s xplsvtlts:tnt_wand
advancement revoke @s only xplsvtlts:event_listeners/on_craft/craft_tnt_wand
clear @s knowledge_book

give @s minecraft:stone_pickaxe{CustomModelData:7106215, display:{Name:'{"text":"Tnt Wand","italic":false,"color":"yellow"}'}, Unbreakable:true}