advancement revoke @s only main:ability/starlight_wand

execute if score @s starlight_used matches ..10 run return fail
scoreboard players set @s starlight_used 0

execute unless score @s starlight_cooldown matches 40.. run tellraw @s {"text":"This item is on cooldown!","color":"red"}
execute unless score @s starlight_cooldown matches 40.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score @s starlight_cooldown matches 40.. run return fail

execute unless score @s mana matches 120.. run tellraw @s {"text":"Not Enough Mana!","color":"red"}
execute unless score @s mana matches 120.. run playsound minecraft:block.ender_chest.close master @s ~ ~ ~ 0.5 1
execute unless score @s mana matches 120.. run return fail

scoreboard players set @s mana_usage 120
scoreboard players set @s mana_usage_reason 5
scoreboard players remove @s mana 120

scoreboard players set @s starlight_cooldown 0
scoreboard players set @s starlight_duration 81
scoreboard players set @s starlight_memory 0