execute unless score %weight dungeon.gen matches 0.. run scoreboard players set %weight dungeon.gen 0
scoreboard players set $handled dungeon.gen 0
scoreboard players add $append_cycle dungeon.gen 1


# 1x1
execute if score $append_cycle dungeon.gen matches 1 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"1x1_1":1}] run function main:dungeon/gen/room_append {"id":"1x1_1","weight":1}
execute if score $append_cycle dungeon.gen matches 1 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"1x1_2":1}] run function main:dungeon/gen/room_append {"id":"1x1_2","weight":1}
execute if score $append_cycle dungeon.gen matches 1 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"1x1_3":1}] run function main:dungeon/gen/room_append {"id":"1x1_3","weight":1}
execute if score $append_cycle dungeon.gen matches 1 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"1x1_4":1}] run function main:dungeon/gen/room_append {"id":"1x1_4","weight":1}
execute if score $append_cycle dungeon.gen matches 1 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"1x1_5":1}] run function main:dungeon/gen/room_append {"id":"1x1_5","weight":1}
execute if score $append_cycle dungeon.gen matches 1 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"1x1_6":1}] run function main:dungeon/gen/room_append {"id":"1x1_6","weight":1}
execute if score $append_cycle dungeon.gen matches 1 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"1x1_7":1}] run function main:dungeon/gen/room_append {"id":"1x1_7","weight":1}

# 2x1
execute if score $append_cycle dungeon.gen matches 2 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"2x1_1":2}] run function main:dungeon/gen/room_append_long {"id":"2x1_1", "id2":"2x1_2","weight":2}
#execute if score $append_cycle dungeon.gen matches 2 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"2x1_2":2}] run function main:dungeon/gen/room_append_long {"id":"2x1_2","weight":2}

# 3x1
#execute if score $append_cycle dungeon.gen matches 3 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"3x1_1":3}] run function main:dungeon/gen/room_append_asian {"id":"3x1_1","weight":3}
#execute if score $append_cycle dungeon.gen matches 3 unless score $handled dungeon.gen matches 1 unless data storage dungeon rooms[{"3x1_2":3}] run function main:dungeon/gen/room_append_asian {"id":"3x1_2","weight":3}

# repeat cycle
execute if score $append_cycle dungeon.gen matches 3 run scoreboard players set $append_cycle dungeon.gen 0


execute if score %weight dungeon.gen matches 14.. run title @a title "r"
execute if score %weight dungeon.gen matches 14.. at @e[tag=dungeon_generating] run fill ~15 ~-1 ~15 ~-15 ~6 ~-15 stone
execute if score %weight dungeon.gen matches 14.. run tag @e[tag=dungeon_generating] remove dungeon_generating
execute if score %weight dungeon.gen matches 14.. run scoreboard players set $filling dungeon.gen 0
execute if score $filling dungeon.gen matches 1 run schedule function main:dungeon/gen/fill 1t