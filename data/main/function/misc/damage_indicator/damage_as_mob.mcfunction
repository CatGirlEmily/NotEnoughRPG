data modify storage minecraft:damage damage.type set value ""
execute if score @p[tag=using_magic] damage_math matches 10000..999999 run data modify storage minecraft:damage damage.type set value "k"
execute if score @p[tag=using_magic] damage_math matches 10000..999999 run scoreboard players operation @p[tag=using_magic] damage_math /= 1000 int

#execute if score @p[tag=using_magic] damage_math matches 1000000.. run data modify storage minecraft:damage damage.type set value "k"
#execute if score @p[tag=using_magic] damage_math matches 1000000.. run scoreboard players operation @p[tag=using_magic] damage_math /= 1000 int


execute store result storage minecraft:damage damage.amount int 1 run scoreboard players get @p[tag=using_magic] damage_math
execute at @s summon marker run return run function main:misc/damage_indicator/damage_spawn with storage minecraft:damage damage
