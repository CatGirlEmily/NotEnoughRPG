tag @e[tag=dungeon_generating,limit=1,sort=random] add this4

scoreboard players set $long_attempt dungeon.gen 0



#execute at @n[type=small_fireball,tag=this4] unless score $long_attempt dungeon.gen matches 1.. positioned ~ ~ ~-32 if entity @n[tag=dungeon_generating,distance=..2] run scoreboard players set $long_attempt dungeon.gen 1
#execute at @n[type=small_fireball,tag=this4] if score $long_attempt dungeon.gen matches 1 positioned ~ ~ ~-32 run tag @n[distance=..2] remove dungeon_generating
#execute at @n[type=small_fireball,tag=this4] unless score $long_attempt dungeon.gen matches 1.. positioned ~ ~ ~32 if entity @n[tag=dungeon_generating,distance=..2] run scoreboard players set $long_attempt dungeon.gen 2
#execute at @n[type=small_fireball,tag=this4] if score $long_attempt dungeon.gen matches 2 positioned ~ ~ ~32 run tag @n[distance=..2] remove dungeon_generating
execute at @n[type=small_fireball,tag=this4] unless score $long_attempt dungeon.gen matches 1.. positioned ~32 ~ ~ if entity @n[tag=dungeon_generating,distance=..2] run scoreboard players set $long_attempt dungeon.gen 3
execute at @n[type=small_fireball,tag=this4] if score $long_attempt dungeon.gen matches 3 positioned ~32 ~ ~ run tag @n[distance=..2] remove dungeon_generating
execute at @n[type=small_fireball,tag=this4] unless score $long_attempt dungeon.gen matches 1.. positioned ~-32 ~ ~ if entity @n[tag=dungeon_generating,distance=..2] run scoreboard players set $long_attempt dungeon.gen 4
execute at @n[type=small_fireball,tag=this4] if score $long_attempt dungeon.gen matches 4 positioned ~-32 ~ ~ run tag @n[distance=..2] remove dungeon_generating


execute unless score $long_attempt dungeon.gen matches 1.. run return run tag @n[tag=this4] remove this4

$execute if score $long_attempt dungeon.gen matches 1 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id2) ~-15 ~-2 ~-16
$execute if score $long_attempt dungeon.gen matches 1 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id) ~-15 ~-2 ~-47
$execute if score $long_attempt dungeon.gen matches 2 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id2) ~-15 ~-2 ~16
$execute if score $long_attempt dungeon.gen matches 2 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id) ~-15 ~-2 ~-15

$execute if score $long_attempt dungeon.gen matches 3 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id2) ~16 ~-2 ~-15 clockwise_90
$execute if score $long_attempt dungeon.gen matches 3 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id) ~47 ~-2 ~-15 clockwise_90
$execute if score $long_attempt dungeon.gen matches 4 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id2) ~-16 ~-2 ~-15 clockwise_90
$execute if score $long_attempt dungeon.gen matches 4 at @n[type=small_fireball,tag=this4] run place template minecraft:room_$(id) ~15 ~-2 ~-15 clockwise_90


execute at @n[tag=this4] run setblock ~ ~10 ~ glowstone

scoreboard players set $handled dungeon.gen 1
scoreboard players add %weight dungeon.gen 2
tag @e[type=small_fireball,tag=this4] remove dungeon_generating
tag @e[type=small_fireball,tag=this4] remove this4
$data modify storage dungeon rooms append value {"$(id)":$(weight)}