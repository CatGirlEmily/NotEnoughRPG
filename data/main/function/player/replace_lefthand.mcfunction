scoreboard players add @s SILLY_countlefthand 1
$item replace entity @s $(air) from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute if score @s SILLY_countlefthand matches 15.. run tellraw @a [{"text":"=-=-=-=-=-=-=-=-=-=-=-=-\nFOR THE LOVE OF GOD PLEASE TELL ","color":"dark_red","bold":true},{"selector":"@s","color":"gold","bold":true},{"text":" to NOT equip items into their left hand !!!\n=-=-=-=-=-=-=-=-=-=-=-=-","color":"dark_red","bold":true}]
execute if score @s SILLY_countlefthand matches 15.. as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1
execute if score @s SILLY_countlefthand matches 15.. as @a at @s run return run scoreboard players set @s SILLY_countlefthand -2147483647

tellraw @s {"text":"| Sorry but the usage of left hand is DISABLED by NERPG","color":"red","bold":true}
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.6