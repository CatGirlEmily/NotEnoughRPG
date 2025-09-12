execute as @e[type=small_fireball,tag=dungeon_z+_side] at @s run summon small_fireball ~ ~ ~32 {Tags:["dungeon_outside"]}
execute as @e[type=small_fireball,tag=dungeon_z-_side] at @s run summon small_fireball ~ ~ ~-32 {Tags:["dungeon_outside"]}

execute as @e[type=small_fireball,tag=dungeon_last_row] at @s run summon small_fireball ~-32 ~ ~ {Tags:["dungeon_outside"]}
execute as @e[type=small_fireball,tag=dungeon_last_row] at @s run summon small_fireball ~64 ~ ~ {Tags:["dungeon_outside"]}

execute as @e[type=small_fireball,tag=dungeon_last_row,tag=dungeon_z+_side] at @s run summon small_fireball ~-32 ~ ~32 {Tags:["dungeon_outside"]}
execute as @e[type=small_fireball,tag=dungeon_last_row,tag=dungeon_z-_side] at @s run summon small_fireball ~-32 ~ ~-32 {Tags:["dungeon_outside"]}

execute as @e[type=small_fireball,tag=dungeon_first_row] at @s run summon small_fireball ~32 ~ ~ {Tags:["dungeon_outside"]}