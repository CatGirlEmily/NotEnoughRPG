execute store result score %br_random dungeon.gen run random value 1..2
execute if score %br_random dungeon.gen matches 1 run return run place template minecraft:room_blood ~15 ~-2 ~15 180
execute if score %br_random dungeon.gen matches 2 if entity @s[tag=dungeon_z+_side] run return run place template minecraft:room_blood ~15 ~-2 ~-15 clockwise_90
execute if score %br_random dungeon.gen matches 2 if entity @s[tag=dungeon_z-_side] run return run place template minecraft:room_blood ~-15 ~-2 ~15 counterclockwise_90
execute if score %br_random dungeon.gen matches 2 run return run place template minecraft:room_blood ~15 ~-2 ~-15 none front_back