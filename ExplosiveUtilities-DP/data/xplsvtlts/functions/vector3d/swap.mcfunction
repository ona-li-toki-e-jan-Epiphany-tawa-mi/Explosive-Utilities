##
# Swaps the first and second vector.
#

scoreboard players operation _temp_x xplsvtlts = _x1 xplsvtlts
scoreboard players operation _temp_y xplsvtlts = _y1 xplsvtlts
scoreboard players operation _temp_z xplsvtlts = _z1 xplsvtlts

scoreboard players operation _x1 xplsvtlts = _x2 xplsvtlts
scoreboard players operation _y1 xplsvtlts = _y2 xplsvtlts
scoreboard players operation _z1 xplsvtlts = _z2 xplsvtlts

scoreboard players operation _x2 xplsvtlts = _temp_x xplsvtlts
scoreboard players operation _y2 xplsvtlts = _temp_y xplsvtlts
scoreboard players operation _z2 xplsvtlts = _temp_z xplsvtlts

scoreboard players reset _temp_x xplsvtlts
scoreboard players reset _temp_y xplsvtlts
scoreboard players reset _temp_z xplsvtlts