##
# Runs when a player crafts a tnt on a stick.
#
# Needs to be called with @s being the player.
#

recipe take @s xplsvtlts:tnt_on_a_stick
advancement revoke @s only xplsvtlts:event_listeners/on_craft/craft_tnt_on_a_stick
clear @s knowledge_book

give @s minecraft:stone_sword{CustomModelData:252573366, display:{Name:'{"text":"Tnt on a Stick","italic":false}'}}