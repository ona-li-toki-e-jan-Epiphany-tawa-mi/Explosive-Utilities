##
# Swaps the first two vector registers.
#
# Parameters:
#   Vector register 1 - the first register.
#   Vector register 2 - the second register.
#
# Returns:
#   Vector register 1 - the value the second register had.
#   Vector register 2 - the value the first register had.
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