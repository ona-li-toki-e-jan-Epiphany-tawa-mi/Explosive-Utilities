##################################################################################
# The code present here is a modified version of that from another project,      #
# <https://github.com/NOPEname/nn_math>, which is under the following license:   #
#--------------------------------------------------------------------------------#
# MIT License                                                                    #
#                                                                                #
# Copyright (c) 2020 NOPEname                                                    #
#                                                                                #
# Permission is hereby granted, free of charge, to any person obtaining a copy   #
# of this software and associated documentation files (the "Software"), to deal  #
# in the Software without restriction, including without limitation the rights   #
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      #
# copies of the Software, and to permit persons to whom the Software is          #
# furnished to do so, subject to the following conditions:                       #
#                                                                                #
# The above copyright notice and this permission notice shall be included in all #
# copies or substantial portions of the Software.                                #
#                                                                                #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    #
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  #
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  #
# SOFTWARE.                                                                      #
##################################################################################

##
# Finds the square root of the number stored in _n using the Babylonian method and stores it in _sqrt.
#

scoreboard players operation _sqrt xplsvtlts = _n xplsvtlts
scoreboard players set #2 xplsvtlts 2
scoreboard players set _temp xplsvtlts 1

# If the number is less than or equal to 1 there is no reason to try and calculate the square root.
execute if score _sqrt xplsvtlts > _temp xplsvtlts run function xplsvtlts:math/_sqrt_loop

scoreboard players reset _temp xplsvtlts
scoreboard players reset #2 xplsvtlts
