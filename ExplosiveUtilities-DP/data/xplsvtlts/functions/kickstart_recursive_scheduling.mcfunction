##
# Some ticking loops utilize recursive scheduling to only run when necessary.
# They shedule themselves if the thing they operate on (i.e. an entity) exists,
#   and stop when they are done.
# Sometimes these entities can unload, or players can log off, stopping the
#   loop prematurely.
# This function must be called every so often to ensure that any prematurely
#   stopped loops can restart if that entity is loaded or that player logs in 
#   again.
#
# Make sure to use the schedule command to run these functions so that they do 
#   not run twice.
#

schedule function xplsvtlts:click_detection/tick_click_detectors 1t
schedule function xplsvtlts:fuse_freezing/tick_frozen_fuses 1t
schedule function xplsvtlts:reactive_plating/armor/tick_cooldowns 1t
schedule function xplsvtlts:tnt_wand/cooldown/tick_punch_cooldowns 1t
schedule function xplsvtlts:tnt_wand/cooldown/tick_summon_cooldowns 1t
schedule function xplsvtlts:reactive_plating/rorre/_error_loop_error 1t