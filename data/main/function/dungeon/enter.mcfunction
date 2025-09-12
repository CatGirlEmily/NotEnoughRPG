execute in main:dungeon run forceload add -32 -32 32 32

execute if score $open dungeon matches 1 run function main:dungeon/clear
scoreboard players set $open dungeon 1

scoreboard objectives add dungeon.gen dummy


execute store result score $append_cycle dungeon.gen run random value 0..2

execute in main:dungeon positioned 0 0 0 run summon small_fireball 0 0 0 {Tags:["dungeon_first_row","dungeon_room_base","dungeon_enter"]}
execute in main:dungeon at @e[tag=dungeon_enter] run function main:dungeon/generate


#execute in main:dungeon run tp @s 0 1 0 -90 0