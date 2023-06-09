##
# Makes an item reactive as part of the reactive armor/tool crafting process.
#
# Parameters:
#   @s - the item entity to make reactive.
#
# Returns: 
#   _made_reactive (scoreboard: xplsvtlts) - sets to true.
#

# Adds reactive identifiers to the item.
data modify entity @s Item.tag.Reactive set value 1b
data modify entity @s Item.tag.display.Lore append value "{\"text\":\"Reactive\",\"italic\":false,\"color\":\"red\"}"

# Adds blast protection II to armor if it is not already present (does not check level.)
execute unless predicate xplsvtlts:is_blast_protected_item_entity if predicate xplsvtlts:is_armor_item_entity run data modify entity @s Item.tag.Enchantments append value {"id":"minecraft:blast_protection","lvl":2s}

# Marks that the reative plating has been used up.
scoreboard players set _made_reactive xplsvtlts 1

