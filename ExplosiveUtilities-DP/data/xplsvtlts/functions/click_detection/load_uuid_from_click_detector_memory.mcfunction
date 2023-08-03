##
# Loads the UUID stored under the given entity in the click detector memory.
# Make sure to call "function xplsvtlts:uuid/reset_get_uuid" to reset the 
#   results after they are no longer needed.
#
# Interactions use this memory to store the UUID of their owner.
# Players use this memory for storing their UUID for later comparison.
#
# Parameters:
#   @s - the entity to use to query the click detector memory.
#
# Returns:
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the resulting
#       UUID.
#

scoreboard players operation _uuid0 xplsvtlts = @s xplsvtlts_click_detector_uuid_memory_0
scoreboard players operation _uuid1 xplsvtlts = @s xplsvtlts_click_detector_uuid_memory_1
scoreboard players operation _uuid2 xplsvtlts = @s xplsvtlts_click_detector_uuid_memory_2
scoreboard players operation _uuid3 xplsvtlts = @s xplsvtlts_click_detector_uuid_memory_3