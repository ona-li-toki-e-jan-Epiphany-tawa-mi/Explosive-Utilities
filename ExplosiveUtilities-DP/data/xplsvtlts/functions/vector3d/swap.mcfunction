################################################################################
# MIT License                                                                  #
#                                                                              #
# Copyright (c) 2023 ona-li-toki-e-jan-Epiphany-tawa-mi                        #
#                                                                              #
# Permission is hereby granted, free of charge, to any person obtaining a copy #
# of this software and associated documentation files (the "Software"), to     #
# deal in the Software without restriction, including without limitation the   #
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or  #
# sell copies of the Software, and to permit persons to whom the Software is   #
# furnished to do so, subject to the following conditions:                     #
#                                                                              #
# The above copyright notice and this permission notice shall be included in   #
# all copies or substantial portions of the Software.                          #
#                                                                              #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR   #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,     #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  #
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER       #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING      #
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS #
# IN THE SOFTWARE.                                                             #
################################################################################
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
