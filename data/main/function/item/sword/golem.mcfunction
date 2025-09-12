advancement revoke @s only main:ability/golem_sword

execute if score @s golem_used matches ..10 run return fail
scoreboard players set @s golem_used 0

execute unless score @s golem_cooldown matches 60.. run tellraw @s {"text":"This item is on cooldown!","color":"red"}
execute unless score @s golem_cooldown matches 60.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score @s golem_cooldown matches 60.. run return fail

execute unless score @s mana matches 70.. run tellraw @s {"text":"Not Enough Mana!","color":"red"}
execute unless score @s mana matches 70.. run playsound minecraft:block.ender_chest.close master @s ~ ~ ~ 0.5 1
execute unless score @s mana matches 70.. run return fail

summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[0.1,0.5,0.0],Tags:["anim_golem_sword"]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[0.0,0.5,0.1],Tags:["anim_golem_sword"]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[-0.1,0.5,0.0],Tags:["anim_golem_sword"]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[0.1,0.5,-0.1],Tags:["anim_golem_sword"]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[0.1,0.5,0.1],Tags:["anim_golem_sword"]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[-0.1,0.5,-0.1],Tags:["anim_golem_sword"]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[-0.1,0.5,0.1],Tags:["anim_golem_sword"]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[0.0,0.5,-0.1],Tags:["anim_golem_sword"]}

playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.3 0.5
particle block{block_state:"minecraft:iron_bars"} ~ ~0.1 ~ 0 0 0 0.001 100 force


tag @s add using_magic
scoreboard players set @s mana_usage 70
scoreboard players set @s mana_usage_reason 3
scoreboard players remove @s mana 70
execute as @e[type=!#cw_hp_disp:no_hp,tag=!immune_magic,distance=..5.5,type=!player,limit=10] at @s run function main:player/magic_damage

scoreboard players set @s golem_cooldown 0
tag @a remove using_magic