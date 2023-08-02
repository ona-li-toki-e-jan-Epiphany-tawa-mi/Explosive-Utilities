##
# Attempts to make the given item entity reactive, giving it special properties 
#   like causing explosions when used.
#
# Parameters:
#   @s - the item entity.
#   _made_reactive (scoreboard: xplsvtlts) - whether the reactive plating has 
#       made an item reactive, if so, this does nothing.
# 
# Returns: 
#   _made_reactive (scoreboard: xplsvtlts) - if _made_reactive was true, returns 
#       true. Else, returns true if the item was made reactive.

execute if score _made_reactive xplsvtlts matches 0 if predicate xplsvtlts:entity/reactive_plating/is_reactiveable_item_entity run function xplsvtlts:reactive_plating/crafting/_make_reactive