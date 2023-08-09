##
# Used to play a repeated sound while the forge is running, like a hydralic 
#   press creaking.
#
# Parameters:
#   @s - the running combustion forge core.
#   Location - at @s.
#

# Mod 7 for every 7 ticks.
scoreboard players operation _runtime_mod_7 xplsvtlts = @s xplsvtlts_combustion_forge_runtime
scoreboard players operation _runtime_mod_7 xplsvtlts %= #7 xplsvtlts
execute if score _runtime_mod_7 xplsvtlts matches 0 run playsound minecraft:block.lava.pop block @a ~ ~ ~ 1.0 0.4
scoreboard players reset _runtime_mod_7 xplsvtlts