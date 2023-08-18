##
# Displays a projection of the remaining blocks needed to complete the 
#   pistol kiln multiblock structure.
#
# Make sure to call the function xplsvtlts:pistol_kiln/projection/cleanup
#   afterwards to remove the projection entities.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#

execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~-1 ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~-1 ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:dispenser",Properties:{"facing":"up"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}



execute positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~ ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:blast_furnace",Properties:{"facing":"south"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:blast_furnace",Properties:{"facing":"east"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:blast_furnace",Properties:{"facing":"west"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~ ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:blast_furnace",Properties:{"facing":"north"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}



execute positioned ~1 ~1 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:hopper",Properties:{"facing":"down"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:hopper",Properties:{"facing":"down"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:hopper",Properties:{"facing":"down"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:hopper",Properties:{"facing":"down"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}



execute positioned ~1 ~2 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~2 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~2 ~1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~2 ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~2 ~ if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}

execute positioned ~1 ~2 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~0 ~2 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}
execute positioned ~-1 ~2 ~-1 if block ~ ~ ~ #minecraft:replaceable run summon minecraft:block_display ~-0.25 ~0.25 ~-0.25 {block_state:{Name:"minecraft:polished_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["xplsvtlts_pistol_kiln_projection"]}