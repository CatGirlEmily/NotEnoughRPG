data modify storage minecraft:damage damage.type set value ""
execute if score @s damage_math matches 10000..999999 run data modify storage minecraft:damage damage.type set value "k"
execute if score @s damage_math matches 10000..999999 run scoreboard players operation @s damage_math /= 1000 int

#execute if score @s damage_math matches 1000000.. run data modify storage minecraft:damage damage.type set value "k"
#execute if score @s damage_math matches 1000000.. run scoreboard players operation @s damage_math /= 1000 int



execute store result storage minecraft:damage damage.amount int 1 run scoreboard players get @s damage_math
execute at @s positioned ^ ^ ^3 as @e[tag=hurt_calc,type=!#cw_hp_disp:no_hp,distance=..32,nbt={HurtTime:10s},limit=1,sort=nearest] at @s summon marker run return run function main:misc/damage_indicator/damage_spawn with storage minecraft:damage damage
execute at @s positioned ^ ^ ^3 unless entity @e[tag=hurt_calc,type=!#cw_hp_disp:no_hp,distance=..32,nbt={HurtTime:10s},limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["fake_entity"]}
execute as @e[tag=fake_entity] at @s summon marker run function main:misc/damage_indicator/damage_spawn with storage minecraft:damage damage
