##
# Runs the structural validator, which test if the combustion forge is valid.
# Handles sending feedback to player when multiblock is completed or destoryed.
# Marks core as valid or invalid.
#
# Parameters:
#   @s - the combustion forge core.
#   Location - at @s.
#  
# Returns:
#   Marks the core with the tag "xplsvtlts_was_valid_structure" if it is valid,
#       if not, the tag is removed.
#  

execute store result score _is_valid_structure xplsvtlts run function xplsvtlts:combustion_forge/validation/_check_structure_validity

# Player completed multiblock.
execute if score _is_valid_structure xplsvtlts matches 1 if entity @s[tag=!xplsvtlts_was_valid_structure] run function xplsvtlts:combustion_forge/validation/_mark_as_valid
# Player broke completed multiblock.
execute if score _is_valid_structure xplsvtlts matches 0 if entity @s[tag=xplsvtlts_was_valid_structure] run function xplsvtlts:combustion_forge/validation/_mark_as_invalid

# Kickstarts looping for valid inactive combustion forges.
execute if score _is_valid_structure xplsvtlts matches 1 run schedule function xplsvtlts:combustion_forge/ideling/tick_inactive_cores 1s 



scoreboard players reset _is_valid_structure xplsvtlts