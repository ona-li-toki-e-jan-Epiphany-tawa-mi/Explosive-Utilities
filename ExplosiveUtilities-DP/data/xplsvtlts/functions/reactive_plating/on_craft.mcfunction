##
# Runs when a player crafts reactive plating
#
# Parameters:
#   @s - the player
#

recipe take @s xplsvtlts:reactive_plating
advancement revoke @s only xplsvtlts:craft_reactive_plating
clear @s knowledge_book

give @s minecraft:enchanted_book{CustomModelData:1334495768, display:{Name:'{"text":"Reactive Plating","italic":false,"color":"red"}'}}