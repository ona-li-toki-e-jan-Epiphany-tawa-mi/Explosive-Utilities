##
# Attempts to consume 1 piece of gunpowder from the pistol kiln's fuel 
#   container.
#
# Parameters:
#   @s - the pistol kiln core.
#   Location - at @s.
#
# Returns:
#   _consumed_fuel (scoreboard: xplsvtlts) - 1 if a piece of gunpowder 
#       was consumed, else 0.
#

scoreboard players set _consumed_fuel xplsvtlts 0

execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:0b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.0 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:1b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.1 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:2b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.2 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.3 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:4b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.4 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:5b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.5 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:6b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.6 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:7b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.7 xplsvtlts:decrement_stack
execute if score _consumed_fuel xplsvtlts matches 1 run return 0
execute store success score _consumed_fuel xplsvtlts run execute if block ~ ~-1 ~ minecraft:dispenser{Items:[{Slot:8b,id:"minecraft:gunpowder"}]} run item modify block ~ ~-1 ~ container.8 xplsvtlts:decrement_stack