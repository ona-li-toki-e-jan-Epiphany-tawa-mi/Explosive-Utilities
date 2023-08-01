##
# Runs when a player crafts reactive plating
#
# Parameters:
#   @s - the player
#

recipe take @s xplsvtlts:reactive_plating
advancement revoke @s only xplsvtlts:event_listeners/on_craft/craft_reactive_plating
clear @s knowledge_book

give @s minecraft:enchanted_book{CustomModelData:1385753, display:{Name:'{"text":"Reactive Plating","italic":false,"color":"red"}'}}