##
# Runs when a player crafts a tnt wand.
# Meant to be called from the related advancement.
#
# Needs to be called with @s being the player.
#

# Reset the recipe.
recipe take @s xplsvtlts:tnt_wand
advancement revoke @s only xplsvtlts:craft_tnt_wand
clear @s knowledge_book

give @s minecraft:carrot_on_a_stick{CustomModelData:417106215, display:{Name:'{"text":"Tnt Wand","italic":false}'}, Unbreakable:true}