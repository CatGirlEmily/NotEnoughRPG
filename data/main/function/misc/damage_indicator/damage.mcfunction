execute at @s store result storage minecraft:damage damage.amount int 1 run scoreboard players get @s damage_math
execute at @s positioned ^ ^ ^3 as @e[distance=..6,nbt={HurtTime:10s},limit=1,sort=nearest] summon marker run return run function main:misc/damage_indicator/damage_spawn with storage minecraft:damage damage
execute at @s positioned ^ ^ ^3 unless entity @e[distance=..6,nbt={HurtTime:10s},limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["fake_entity"]}
execute as @e[tag=fake_entity] at @s summon marker run function main:misc/damage_indicator/damage_spawn with storage minecraft:damage damage
