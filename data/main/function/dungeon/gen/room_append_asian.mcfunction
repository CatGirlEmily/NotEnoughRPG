scoreboard players set $asian_attempt dungeon.gen 0
tag @e[tag=dungeon_generating,limit=1,sort=random] add this4


# c
execute unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~ ~ ~32 if entity @e[tag=dungeon_generating,distance=..2] positioned ~32 ~ ~ if entity @e[tag=dungeon_generating,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 1
execute unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~ ~ ~-32 if entity @e[tag=dungeon_generating,distance=..2] positioned ~-32 ~ ~ if entity @e[tag=dungeon_generating,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 2
execute unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~32 ~ ~ if entity @e[tag=dungeon_generating,distance=..2] positioned ~ ~ ~-32 if entity @e[tag=dungeon_generating,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 3
execute unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~-32 ~ ~ if entity @e[tag=dungeon_generating,distance=..2] positioned ~ ~ ~32 if entity @e[tag=dungeon_generating,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 4


execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~ ~ ~32 if entity @e[tag=dungeon_generating,distance=..2] positioned ~32 ~ ~ unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 1
execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~ ~ ~32 unless entity @e[tag=dungeon_room_base,distance=..2] positioned ~32 ~ ~ unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 1
execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~ ~ ~-32 if entity @e[tag=dungeon_generating,distance=..2] positioned ~-32 ~ ~ unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 2
execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~ ~ ~-32 unless entity @e[tag=dungeon_room_base,distance=..2] positioned ~-32 ~ ~ unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 2
execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~32 ~ ~ if entity @e[tag=dungeon_generating,distance=..2] positioned ~ ~ ~-32 unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 3
execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~32 ~ ~ unless entity @e[tag=dungeon_room_base,distance=..2] positioned ~ ~ ~-32 unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 3
execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~-32 ~ ~ if entity @e[tag=dungeon_generating,distance=..2] positioned ~ ~ ~32 unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 4
execute if score %weight dungeon.gen matches 12..13 unless score $asian_attempt dungeon.gen matches 1.. at @e[tag=this4] positioned ~-32 ~ ~ unless entity @e[tag=dungeon_room_base,distance=..2] positioned ~ ~ ~32 unless entity @e[tag=dungeon_room_base,distance=..2] run scoreboard players set $asian_attempt dungeon.gen 4

execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 1 positioned ~ ~ ~32 run tag @n[distance=..2] remove dungeon_generating
execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 1 positioned ~32 ~ ~32 run tag @n[distance=..2] remove dungeon_generating
execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 2 positioned ~ ~ ~-32 run tag @n[distance=..2] remove dungeon_generating
execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 2 positioned ~-32 ~ ~-32 run tag @n[distance=..2] remove dungeon_generating
execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 3 positioned ~32 ~ ~ run tag @n[distance=..2] remove dungeon_generating
execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 3 positioned ~32 ~ ~-32 run tag @n[distance=..2] remove dungeon_generating
execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 4 positioned ~-32 ~ ~ run tag @n[distance=..2] remove dungeon_generating
execute at @e[tag=this4] if score $asian_attempt dungeon.gen matches 4 positioned ~-32 ~ ~32 run tag @n[distance=..2] remove dungeon_generating


####################
execute unless score $asian_attempt dungeon.gen matches 1.. run return run tag @e[tag=this4] remove this4

#tellraw @a {"score":{"name":"$asian_attempt","objective":"dungeon.gen"}}

$execute if score $asian_attempt dungeon.gen matches 1 at @n[tag=this4] run place template minecraft:room_$(id) ~-15 ~-2 ~-15
$execute if score $asian_attempt dungeon.gen matches 2 at @n[tag=this4] run place template minecraft:room_$(id) ~15 ~-2 ~15 1150
$execute if score $asian_attempt dungeon.gen matches 3 at @n[tag=this4] run place template minecraft:room_$(id) ~-15 ~-2 ~15 counterclockwise_90
$execute if score $asian_attempt dungeon.gen matches 4 at @n[tag=this4] run place template minecraft:room_$(id) ~15 ~-2 ~-15 clockwise_90


scoreboard players set $handled dungeon.gen 1
scoreboard players add %weight dungeon.gen 3
tag @e[tag=this4] remove dungeon_generating
tag @e[tag=this4] remove this4
$data modify storage dungeon rooms append value {"$(id)":$(weight)}