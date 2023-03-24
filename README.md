![logo](logo.png)

# Explosive Utilities

*Spice of Death*

A data pack and resource pack for Minecraft 1.19.4 that adds various explosive tools to your world.

*Note: I will add more stuff over time.*

## Items

### ***Tnt Wand***

The tnt wand is a magic weapon that allows you to manipulate tnt.

Right-clicking can consume a piece of tnt from your inventory to summon a lit tnt 4 blocks in front of you, even if that's inside a block. This has a cooldown of 40 ticks by default.

Holding right-click whilst looking at a lit tnt will allow you to corral it. It will follow your cursor and it's fuse will be frozen so it doesn't blow up in your face. This uses actual motion so you can build up momentum and lob around tnt with it. You can also do this with tnt minecarts and creepers, but just because you can, does not mean you should. Also with ghast fireballs, but you'll need to keep your cursor moving to keep control, lest you set yourself ablaze.

Press left-click to create an explosion 1 block in front of you at the cost of 1 tnt. It is slightly less powerful than a normal explosion but has extreme knockback on non-player entities. Has a cooldown of 80 ticks by default. Damage from the explosion will be reduced by 80% for you.

Combining all three moves, you can create, aim, and launch a piece of tnt like a hand-held tnt cannon.

It can be crafted using three sticks, a totem of undying, and a piece of tnt. View the screenshots for more information.

## Compatiblity

Tnt Wands can be used to corral mobs made explosive by [PigsThatGoBoomInTheNight!.](https://www.planetminecraft.com/data-pack/pigsthatgoboominthenight "PigsThatGoBoomInTheNight on Planet Minecraft")

## Configuration

You can set the summon cooldown for the tnt wand with this command, defaults to 40:

```text
/scoreboard players set tnt_wand_summon_cooldown xplsvtlts <ticks>
```

You can set the explosive punch cooldown for the tnt wand with this command, defaults to 80:

```text
/scoreboard players set tnt_wand_punch_cooldown xplsvtlts <ticks>
```

## Installation

Grab a version from [RELEASES.](https://github.com/ona-li-toki-e-jan-Epiphany-tawa-mi/Explosive-Utilities/releases "Explosive Utilities Releases Page")

Place the resource pack inside your Minecraft installation's resource pack folder and enable it. [See for more information.](https://minecraft.fandom.com/wiki/Tutorials/Loading_a_resource_pack "A Minecraft Wiki tutorial on installing resource packs")

Place the datapack inside your world's datapacks folder. [See for more information.](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack "A Minecraft Wiki tutorial on installing data packs")

The pack will automatically finish installation on world load, but you can force it using (recommended if updating pack, note: resets configurations):

```text
/function xplsvtlts:install/initialize
```

## Uninstallation

To uninstall, you first need to run this command:

```text
/function xplsvtlts:install/uninstall
```

After that, remove the datapack from your world's datapacks folder before reloading.

## Links

- [Explosive Utilities Planet Minecraft Page](https://www.planetminecraft.com/data-pack/explosive-utilities "Explosive Utilities on Planet Minecraft")
- [PigsThatGoBoomInTheNight! Planet Minecraft Page](https://www.planetminecraft.com/data-pack/pigsthatgoboominthenight "PigsThatGoBoomInTheNight on Planet Minecraft")
- [PigsThatGoBoomInTheNight! GitHub Repository](https://github.com/ona-li-toki-e-jan-Epiphany-tawa-mi/PigsThatGoBoomInTheNight "PigsThatGoBoomInTheNight on GitHub")

## Screenshots

![corraling tnt](screenshots/corraling_tnt.png)
![tnt wand recipe](screenshots/tnt_wand_recipe.png)
