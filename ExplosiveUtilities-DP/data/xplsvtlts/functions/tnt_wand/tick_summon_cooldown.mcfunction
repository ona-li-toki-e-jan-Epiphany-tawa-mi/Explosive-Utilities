##
# Called every tick on entities with an active tnt wand summon cooldown for decrementing it.
#
# Parameters:
#   @s - the entity.
#

scoreboard players remove @s xplsvtlts_tnt_wand_summon_cooldown 1

# Indicator for when the cooldown is over.
execute if score @s xplsvtlts_tnt_wand_summon_cooldown matches 0 at @s run playsound minecraft:entity.evoker.cast_spell player @a
execute if score @s xplsvtlts_tnt_wand_summon_cooldown matches 0 at @s run particle minecraft:portal ~ ~1 ~ 0.75 1.5 0.75 0.4 60