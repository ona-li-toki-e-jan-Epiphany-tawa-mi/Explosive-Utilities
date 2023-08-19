##
# Used to fill the inside of the kiln with fire and deal extra damage to those
#   inside.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

# Mod 7 for every 7 ticks.
scoreboard players operation _runtime_mod_7 xplsvtlts = @s xplsvtlts_combustion_forge_runtime
scoreboard players operation _runtime_mod_7 xplsvtlts %= #7 xplsvtlts

execute if score _runtime_mod_7 xplsvtlts matches 0 as @e[predicate=!xplsvtlts:entity/is_ignorable,dx=0.5,dy=1.0,dz=0.5] run damage @s 2.0 minecraft:in_fire
execute if score _runtime_mod_7 xplsvtlts matches 0 run setblock ~ ~ ~ minecraft:fire

scoreboard players reset _runtime_mod_7 xplsvtlts