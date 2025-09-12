tag @e[tag=dungeon_generating,limit=1,sort=random] add this4
$execute at @n[tag=this4] run place template minecraft:room_$(id) ~-15 ~-2 ~-15
scoreboard players add %weight dungeon.gen 1
tag @e[tag=this4] remove dungeon_generating
tag @e[tag=this4] remove this4
scoreboard players set $handled dungeon.gen 1
$data modify storage dungeon rooms append value {"$(id)":$(weight)}