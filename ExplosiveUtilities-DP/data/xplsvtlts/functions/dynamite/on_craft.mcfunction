##
# Called when a player crafts dynamite. Small chance to explode ;).
#
# Parameters:
#   @s - the player.
#   Location - at @s.
#

recipe take @s xplsvtlts:stonecutting/dynamite
advancement revoke @s only xplsvtlts:event_listeners/on_craft/craft_dynamite
clear @s minecraft:knowledge_book 



scoreboard players set _exploded xplsvtlts 0
execute store success score _exploded xplsvtlts run execute if predicate xplsvtlts:entity/dynamite/should_crafting_explode run summon minecraft:tnt ~ ~ ~ {Fuse:0s,CustomName:'{"text":"Dynamite Crafting Explosion"}',CustomNameVisible:0b}
execute if score _exploded xplsvtlts matches 0 run give @p minecraft:armor_stand{display:{Name:'{"text":"Dynamite","italic":false}',Lore:['{"text":"Explosive Utilities","color":"blue","italic":false}']},CustomModelData:15704532,EntityTag:{Invulnerable:1b,Small:1b,Invisible:1b,Tags:["xplsvtlts_dynamite"],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:15704532}}]}} 16



scoreboard players reset _exploded xplsvtlts