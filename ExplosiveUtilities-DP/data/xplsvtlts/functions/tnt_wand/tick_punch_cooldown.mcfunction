##
# Called every tick on entities with an active tnt wand explosive punch cooldown for decrementing it.
#
# Parameters:
#   @s - the entity.
#

scoreboard players remove @s xplsvtlts_tnt_wand_punch_cooldown 1

# Indicator for when the cooldown is over.
execute if score @s xplsvtlts_tnt_wand_punch_cooldown matches 0 at @s run playsound minecraft:entity.evoker.prepare_summon player @a
execute if score @s xplsvtlts_tnt_wand_punch_cooldown matches 0 at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.6 60