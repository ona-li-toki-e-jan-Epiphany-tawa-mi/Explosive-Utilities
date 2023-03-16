##
# Runs when an explosive entity's fuse freeze timer runs out.
#
# Needs to be called with @s being the explosive.
#

# If the entity was set to regain gravity on thawing (meant for corraling tnt with wand) then we can restore it here.
execute if entity @s[tag=xplsvtlts_gravity_on_thaw] run data modify entity @s NoGravity set value false
tag @s remove xplsvtlts_gravity_on_thaw