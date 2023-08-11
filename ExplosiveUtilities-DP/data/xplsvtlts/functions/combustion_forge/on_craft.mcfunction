##
# Runs when a player crafts a combustion forge core.
#
# Parameters:
#   @s - the player.
#

recipe take @s xplsvtlts:crafting/combustion_forge_core
advancement revoke @s only xplsvtlts:event_listeners/on_craft/craft_combustion_forge_core
clear @s knowledge_book

give @s minecraft:armor_stand{CustomModelData:10462431,EntityTag:{Tags:["xplsvtlts_combustion_forge_core"],NoGravity:1b,Marker:1b},display:{Name:'{"text":"Combustion Forge Core","italic":false}',Lore:['{"text":"Explosive Utilities","color":"blue","italic":false}','{"text":"Multiblock structure that uses explosions to craft items."}','{"text":"Place down for projection."}','{"text":"Faces player when placed."}','{"text":"Furnace orientation does not matter."}','{"text":"Crouch near core to pick up."}','{"text":"Close trapdoor to activate."}','{"text":"Consumes tnt from dispenser as fuel."}','{"text":"Can do up to 16 crafts per tnt."}','{"text":"Recipe ingredients are taken from furnaces."}','{"text":"Leftover ingredients will be ejected from the forge."}','{"text":"Left target outputs when running."}','{"text":"Right target outputs when done running."}','{"text":"Open trapdoor to finish."}','{"text":"Size: 3x3x3"}','{"text":"Bill of Materials:"}','{"text":"- 13x Obsidian"}','{"text":"- 9x Furnace"}','{"text":"- 1x Dispenser"}','{"text":"- 1x Iron Trapdoor"}']}}