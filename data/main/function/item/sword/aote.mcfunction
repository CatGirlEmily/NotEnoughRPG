advancement revoke @s only main:ability/aote

execute if score @s aote_used matches ..3 run return fail
execute at @s unless block ~ ~1 ~ #main:aotable run return fail
execute at @s unless block ~ ~ ~ #main:aotable run return fail
scoreboard players set @s aote_used 0

execute unless score @s mana matches 50.. run tellraw @s {"text":"Not Enough Mana!","color":"red"}
execute unless score @s mana matches 50.. run playsound minecraft:block.ender_chest.close master @a ~ ~ ~ 0.5 1
execute unless score @s mana matches 50.. run return fail

scoreboard players set %aote_no aote_duration 9
execute if score @s mana matches 50.. run attribute @s minecraft:movement_speed modifier add aote 0.5 add_multiplied_base
execute if score @s mana matches 50.. run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute if score @s mana matches 50.. at @s run function main:misc/aote
scoreboard players set @s vertical_motion 2
execute if score @s mana matches 50.. run scoreboard players set @s aote_duration 0
execute if score @s mana matches 50.. run scoreboard players set @s mana_usage 50
execute if score @s mana matches 50.. run scoreboard players set @s mana_usage_reason 2
execute if score @s mana matches 50.. run scoreboard players remove @s mana 50