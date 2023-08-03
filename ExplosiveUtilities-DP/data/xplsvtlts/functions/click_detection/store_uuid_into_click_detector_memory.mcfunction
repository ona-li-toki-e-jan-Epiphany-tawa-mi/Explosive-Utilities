##
# Stores the UUID stored under the given entity in the click detector memory.
#
# Interactions use this memory to store the UUID of their owner.
# Players use this memory for storing their UUID for later comparison.
#
# Parameters:
#   @s - the entity to store the UUID under.
#   [_uuid0, _uuid1, _uuid2, _uuid3] (scoreboard: xplsvtlts) - the UUID to 
#       store.
#

scoreboard players operation @s xplsvtlts_click_detector_uuid_memory_0 = _uuid0 xplsvtlts
scoreboard players operation @s xplsvtlts_click_detector_uuid_memory_1 = _uuid1 xplsvtlts
scoreboard players operation @s xplsvtlts_click_detector_uuid_memory_2 = _uuid2 xplsvtlts
scoreboard players operation @s xplsvtlts_click_detector_uuid_memory_3 = _uuid3 xplsvtlts