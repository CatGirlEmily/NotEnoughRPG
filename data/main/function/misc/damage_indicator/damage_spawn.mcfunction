tag @e[type=!marker,limit=1,sort=nearest] add damagesplashbeloved
execute as @s at @e[tag=damagesplashbeloved] facing entity @p[scores={damage_trigger=1..}] eyes run tp @s ^ ^ ^0.8
data modify entity @s Pos[1] set from entity @e[tag=damagesplashbeloved,limit=1] Pos[1]
execute at @s run tp ~ ~1 ~
execute store result score %move_y random run random value 0..30
execute store result score %move_x random run random value 0..30

execute store result storage minecraft:damage damage.movey int 1 run scoreboard players get %move_y random
execute store result storage minecraft:damage damage.movex int 1 run scoreboard players get %move_x random
execute at @s run function main:misc/damage_indicator/damage_move_x with storage minecraft:damage damage
execute at @s run function main:misc/damage_indicator/damage_move_y with storage minecraft:damage damage


execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["damage_splash","this"],CustomNameVisible:1b}
execute store result score %splash_color random run random value 1..4
$execute as @p[scores={damage_trigger=1..}] unless score @s cr < %critchance random run data merge entity @e[tag=this,limit=1] {CustomName:'[{"color":"white","text":"✧"},{"color":"gold","text":"$(amount)"},{"color":"white","text":"✧"}]'}
$execute as @p[scores={damage_trigger=1..}] if score @s cr < %critchance random if score %splash_color random matches 1 run data merge entity @e[tag=this,limit=1] {CustomName:'[{"color":"yellow","text":"$(amount)"}]'}
$execute as @p[scores={damage_trigger=1..}] if score @s cr < %critchance random if score %splash_color random matches 2 run data merge entity @e[tag=this,limit=1] {CustomName:'[{"color":"gold","text":"$(amount)"}]'}
$execute as @p[scores={damage_trigger=1..}] if score @s cr < %critchance random if score %splash_color random matches 3 run data merge entity @e[tag=this,limit=1] {CustomName:'[{"color":"red","text":"$(amount)"}]'}
$execute as @p[scores={damage_trigger=1..}] if score @s cr < %critchance random if score %splash_color random matches 4 run data merge entity @e[tag=this,limit=1] {CustomName:'[{"color":"dark_red","text":"$(amount)"}]'}

scoreboard players set @a damage_math 0
scoreboard players set @a damage_trigger 0
tag @e remove damagesplashbeloved
tag @e remove this
kill @s
kill @e[tag=fake_entity]