##
# Runs once every second for periodic things like dropped item crafting.
#

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:1334495768}}}] at @s run function xplsvtlts:reactive_plating/item_entity_on_every_second

# Recursive scheduling to keep this loop running.
schedule function xplsvtlts:on_every_second 1s