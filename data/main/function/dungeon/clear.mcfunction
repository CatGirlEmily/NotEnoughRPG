scoreboard players set $open dungeon 0

execute as @e[type=small_fireball,tag=dungeon_room_base] at @s run fill ~16 ~16 ~16 ~-16 ~-2 ~-16 air
execute as @e[type=small_fireball,tag=dungeon_room_base] at @s run fill ~16 ~17 ~16 ~-16 ~32 ~-16 air

kill @e[tag=dungeon_room_base]
kill @e[tag=dungeon_outside]
kill @e[type=armor_stand]
kill @e[type=item_display]
kill @e[type=item]

scoreboard objectives remove dungeon.gen