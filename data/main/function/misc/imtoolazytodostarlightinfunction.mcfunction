particle minecraft:end_rod ~ ~2 ~ 0 10 0 0 100 normal
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 1

tag @s add hurt_calc
damage @s 0.001 generic_kill
scoreboard players operation @s mob_hp -= %damage starlight_memory
execute as @p[tag=using_magic] at @s run function main:misc/damage_indicator/damage_as_mob
execute if score @s mob_hp matches ..0 run damage @s 10000 generic_kill by @p[tag=using_magic]
tag @s remove hurt_calc