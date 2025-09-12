place template minecraft:room_start ~-15 ~-2 ~-15

execute store result score %side dungeon.gen run random value 1..2

summon small_fireball ~ ~ ~32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z+_side","dungeon_first_row"]}
summon small_fireball ~ ~ ~-32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z-_side","dungeon_first_row"]}
summon small_fireball ~-32 ~ ~ {Tags:["dungeon_generating","dungeon_room_base"]}
summon small_fireball ~-32 ~ ~32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z+_side"]}
summon small_fireball ~-32 ~ ~-32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z-_side"]}
summon small_fireball ~-64 ~ ~ {Tags:["dungeon_generating","dungeon_room_base"]}
summon small_fireball ~-64 ~ ~32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z+_side"]}
summon small_fireball ~-64 ~ ~-32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z-_side"]}
summon small_fireball ~-96 ~ ~ {Tags:["dungeon_generating","dungeon_room_base","dungeon_last_row"]}
summon small_fireball ~-96 ~ ~32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_last_row","dungeon_z+_side"]}
summon small_fireball ~-96 ~ ~-32 {Tags:["dungeon_generating","dungeon_room_base","dungeon_last_row","dungeon_z-_side"]}

execute if score %side dungeon.gen matches 1 run tag @e[tag=dungeon_z+_side] remove dungeon_z+_side
execute if score %side dungeon.gen matches 1 run summon small_fireball ~-96 ~ ~64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_last_row","dungeon_z+_side"]}
execute if score %side dungeon.gen matches 1 run summon small_fireball ~-64 ~ ~64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z+_side"]}
execute if score %side dungeon.gen matches 1 run summon small_fireball ~-32 ~ ~64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z+_side"]}
execute if score %side dungeon.gen matches 1 run summon small_fireball ~ ~ ~64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z+_side","dungeon_first_row"]}

execute if score %side dungeon.gen matches 2 run tag @e[tag=dungeon_z-_side] remove dungeon_z-_side
execute if score %side dungeon.gen matches 2 run summon small_fireball ~-96 ~ ~-64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_last_row","dungeon_z-_side"]}
execute if score %side dungeon.gen matches 2 run summon small_fireball ~-64 ~ ~-64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z-_side"]}
execute if score %side dungeon.gen matches 2 run summon small_fireball ~-32 ~ ~-64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z-_side"]}
execute if score %side dungeon.gen matches 2 run summon small_fireball ~ ~ ~-64 {Tags:["dungeon_generating","dungeon_room_base","dungeon_z-_side","dungeon_first_row"]}

#function main:dungeon/gen/outside

tag @e[tag=dungeon_last_row,sort=random,limit=1] add dungeon_blood_room
tag @e[tag=dungeon_blood_room] remove dungeon_generating


execute as @e[tag=dungeon_blood_room] at @s run function main:dungeon/gen/br

data remove storage dungeon rooms
scoreboard players set $filling dungeon.gen 1
function main:dungeon/gen/fill