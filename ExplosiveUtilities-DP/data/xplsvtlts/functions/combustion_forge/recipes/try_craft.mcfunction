##
# Attempts to craft up to 16 items using the ingridients specified in the
#   combustion forge's crafting grid, consuming those ingredients in the process
#   and outputting the results as item entities inside the combustion forge.
#
# Parameters:
#   @s - the combustion forge.
#   Location - at @s.
#

scoreboard players set _items_crafted xplsvtlts 0
scoreboard players set _found_recipe xplsvtlts 0

# See {PROJECT_DIR}/combustion_forge_recipes/ for adding more recipes to the
#   combustion forge.
function #xplsvtlts:combustion_forge_recipes/recipes

scoreboard players reset _items_crafted xplsvtlts
scoreboard players reset _found_recipe xplsvtlts