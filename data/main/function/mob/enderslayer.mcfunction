execute store result score %enderslayer damage_math run data get entity @s SelectedItem.components."minecraft:enchantments".levels."main:ender_slayer"
scoreboard players operation %enderslayer damage_math *= 12 int

say worked