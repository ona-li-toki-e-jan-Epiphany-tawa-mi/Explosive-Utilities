##
# Runs every tick on players with an active tnt wand explosive punch cooldown.
#
# Parameters:
#   @s - the entity.
#

scoreboard players remove @s xplsvtlts_tnt_wand_punch_cooldown 1

execute if score @s xplsvtlts_tnt_wand_punch_cooldown matches ..0 at @s run function xplsvtlts:tnt_wand/cooldown/end_punch_cooldown