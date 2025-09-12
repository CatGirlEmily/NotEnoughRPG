
kill @s
scoreboard players operation @s hp = @s max_hp
scoreboard players operation @s coins /= 2 int
scoreboard players operation @s mana = @s max_mana
scoreboard players operation @s mana /= 2 int
execute unless score @s coins matches 0 run tellraw @s ["",{"text":"> You died and lost ","color":"red"},{"score":{"name":"@s","objective":"coins"},"color":"red"},{"text":" coins!","color":"red"}]