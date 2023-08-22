##
# Attempts to make the item a player is holding reactive. Alerts them if the
#   item cannot be made reactive. Meant for testing.
#
# Parameters:
#   @s - the player,
#

execute if predicate xplsvtlts:entity/reactive_plating/is_holding_reactive_item run tellraw @s {"text":"Unable to make the held item reactive: it is already reactive","color":"red"}
execute if predicate xplsvtlts:entity/reactive_plating/is_holding_reactive_item run return 0

execute unless predicate xplsvtlts:entity/reactive_plating/is_held_item_reactiveable run tellraw @s {"text":"Unable to make the held item reactive: this item cannot be made reactive","color":"red"}
execute unless predicate xplsvtlts:entity/reactive_plating/is_held_item_reactiveable run return 0



item modify entity @s weapon.mainhand xplsvtlts:reactive_plating/make_reactive/add_reactive_nbt

execute unless predicate xplsvtlts:entity/tnt_wand/is_holding_tnt_wand run item modify entity @s weapon.mainhand xplsvtlts:reactive_plating/make_reactive/add_reactive_lore

execute if predicate xplsvtlts:entity/is_holding_armor_item run item modify entity @s weapon.mainhand xplsvtlts:add_blast_protection_iv

execute if predicate xplsvtlts:entity/tnt_wand/is_holding_tnt_wand run item modify entity @s weapon.mainhand xplsvtlts:reactive_plating/make_reactive/imya_imya_tjuertbeb_jee_piv
execute if predicate xplsvtlts:entity/tnt_wand/is_holding_tnt_wand run item modify entity @s weapon.mainhand xplsvtlts:reactive_plating/make_reactive/lore_reactive_err_testno
execute if predicate xplsvtlts:entity/tnt_wand/is_holding_tnt_wand run item modify entity @s weapon.mainhand xplsvtlts:reactive_plating/make_reactive/izmenit_formu
