##
# Tests if a pistol kiln multiblock is valid and complete.
#
# Parameters: 
#   @s - the pistol kiln core.
#   Location - at @s.
#
# Returns:
#   execute result - 1 if valid, else 0.
#

execute unless block ~1 ~-1 ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~-1 ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~-1 ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 

execute unless block ~1 ~-1 ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~-1 ~ minecraft:dispenser[facing=up] run return 0 
execute unless block ~-1 ~-1 ~ #xplsvtlts:pistol_kiln_wall_materials run return 0

execute unless block ~1 ~-1 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~-1 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~-1 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 



execute unless block ~1 ~ ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute positioned ~ ~ ~1 unless block ~ ~ ~ minecraft:blast_furnace[facing=south] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~ ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 

execute positioned ~1 ~ ~ unless block ~ ~ ~ minecraft:blast_furnace[facing=east] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~ ~ #minecraft:replaceable run return 0 
execute positioned ~-1 ~ ~ unless block ~ ~ ~ minecraft:blast_furnace[facing=west] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0

execute unless block ~1 ~ ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute positioned ~ ~ ~-1 unless block ~ ~ ~ minecraft:blast_furnace[facing=north] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~ ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 



execute unless block ~1 ~1 ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute positioned ~ ~1 ~1 unless block ~ ~ ~ minecraft:hopper[facing=down] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~ ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 

execute positioned ~1 ~1 ~ unless block ~ ~ ~ minecraft:hopper[facing=down] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~1 ~ #minecraft:replaceable run return 0 
execute positioned ~-1 ~1 ~ unless block ~ ~ ~ minecraft:hopper[facing=down] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0

execute unless block ~1 ~1 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute positioned ~ ~1 ~-1 unless block ~ ~ ~ minecraft:hopper[facing=down] unless block ~ ~ ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~1 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 



execute unless block ~1 ~2 ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~2 ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~2 ~1 #xplsvtlts:pistol_kiln_wall_materials run return 0 

execute unless block ~1 ~2 ~ #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~2 ~ #minecraft:replaceable run return 0 
execute unless block ~-1 ~2 ~ #xplsvtlts:pistol_kiln_wall_materials run return 0

execute unless block ~1 ~2 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~ ~2 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 
execute unless block ~-1 ~2 ~-1 #xplsvtlts:pistol_kiln_wall_materials run return 0 



return 1