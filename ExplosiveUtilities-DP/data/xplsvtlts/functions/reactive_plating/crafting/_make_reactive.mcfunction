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
data modify entity @s Item.tag.xplsvtlts.Reactive set value 1b
execute unless predicate xplsvtlts:entity/tnt_wand/is_tnt_wand_item_entity run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"Reactive\",\"italic\":false,\"color\":\"red\"}"

# Adds blast protection IV to armor if it is not already present (does not check 
#   level.)
execute unless predicate xplsvtlts:entity/is_blast_protected_item_entity if predicate xplsvtlts:entity/is_armor_item_entity run data modify entity @s Item.tag.Enchantments append value {"id":"minecraft:blast_protection","lvl":4s}



#???
execute if predicate xplsvtlts:entity/tnt_wand/is_tnt_wand_item_entity run function xplsvtlts:reactive_plating/rorre/invalid



# Marks that the reative plating has been used up.
scoreboard players set _made_reactive xplsvtlts 1

