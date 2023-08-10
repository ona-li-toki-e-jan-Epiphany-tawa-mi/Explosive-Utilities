##
# Decrements each item in the combustion forge's crafting grid.
# Meant for when an item is crafted to consume the ingredients.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#

item modify block ^-1 ^ ^-1 container.0 xplsvtlts:decrement_stack
item modify block ^0 ^ ^-1 container.0 xplsvtlts:decrement_stack
item modify block ^1 ^ ^-1 container.0 xplsvtlts:decrement_stack
item modify block ^-1 ^ ^0 container.0 xplsvtlts:decrement_stack
item modify block ^0 ^ ^0 container.0 xplsvtlts:decrement_stack
item modify block ^1 ^ ^0 container.0 xplsvtlts:decrement_stack
item modify block ^-1 ^ ^1 container.0 xplsvtlts:decrement_stack
item modify block ^0 ^ ^1 container.0 xplsvtlts:decrement_stack
item modify block ^1 ^ ^1 container.0 xplsvtlts:decrement_stack