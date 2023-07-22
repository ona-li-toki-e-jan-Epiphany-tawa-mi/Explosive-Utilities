##
# Runs once every second fpr all sheep.
#
# Parameters:
#   @s - the sheep.
#

# Marks sheep for whether they have been sheared, see function xplsvtlts/sheep/try_reactive_shear for why.
execute if entity @s[nbt={"Sheared":0b}] run tag @s remove xplsvtlts_already_sheared
execute if entity @s[nbt={"Sheared":1b}] run tag @s add xplsvtlts_already_sheared