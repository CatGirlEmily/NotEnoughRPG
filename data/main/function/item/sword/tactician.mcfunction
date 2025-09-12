execute unless items entity @s weapon.mainhand wooden_sword[custom_data~{TACTICIAN_SWORD:true}] run return fail

execute unless score @s tactician_bonus matches 1.. run scoreboard players set @s tactician_bonus 50
item modify entity @s weapon main:tactician