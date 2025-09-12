execute store result score @s mob_max_hp run random value 1..50000
scoreboard players operation @s mob_hp = @s mob_max_hp
tag @s add hashp