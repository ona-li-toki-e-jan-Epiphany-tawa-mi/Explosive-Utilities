##
# Ticks tnt wand cursors.
#
# Needs to be called with @s being the cursor, located at @s.
#

execute store success score _found_player xplsvtlts run tp @s @p[predicate=xplsvtlts:is_holding_tnt_wand,distance=..1]

execute if score _found_player xplsvtlts matches 0 run kill @s
scoreboard players reset _found_player xplsvtlts