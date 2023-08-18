##
# Used to play burning sounds while the pistol kiln operates, like with 
#   furnaces.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

# Mod 7 for every 7 ticks.
scoreboard players operation _runtime_mod_7 xplsvtlts = @s xplsvtlts_combustion_forge_runtime
scoreboard players operation _runtime_mod_7 xplsvtlts %= #7 xplsvtlts
execute if score _runtime_mod_7 xplsvtlts matches 0 run playsound minecraft:block.blastfurnace.fire_crackle block @a ~ ~ ~ 2.0 0.5
scoreboard players reset _runtime_mod_7 xplsvtlts