##
# Called when a player places a stick of dynamite. This should only happen if
#   a player is moving too fast for the interaction used to detect clicks cannot
#   keep up with the player for some reason.
# Will not run if dynamite used is last item in stack, but this is unlikely to
#   happen anyways, and ticking will be kickstarted eventually anyways, so 
#   whatevs.
#
# Parameters:
#   @s - the player.
#

advancement revoke @s only xplsvtlts:event_listeners/on_use/place_dynamite



playsound minecraft:entity.tnt.primed player @a ~ ~ ~

# The only thing we can really do is kickstart ticking for dynamite. This is 
#   fine since the placed entity already has all the needed data.
schedule function xplsvtlts:dynamite/tick_dynamite 1t