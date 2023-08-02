##
# Attempts to corral the entity in front of the player, allowing them to control 
#   it. Succeds if the function xplsvtlts:tnt_wand/corraling/_can_corral returns
#   true.
#
# Parameters:
#   @s - the tnt entity.
#   Vector register 3 - where to corral the tnt to. 
#
# Returns:
#   _corraled_tnt (scoreboard: xplsvtlts) - 1 if any entities were corraled, 0
#       otherwise.
# 

function xplsvtlts:tnt_wand/corraling/_can_corral
execute if score _corralable xplsvtlts matches 1 at @s run function xplsvtlts:tnt_wand/corraling/_corral_entity

scoreboard players reset _corralable