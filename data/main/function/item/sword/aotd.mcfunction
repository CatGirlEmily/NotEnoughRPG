advancement revoke @s only main:ability/aotd

execute if score @s aotd_used matches ..3 run return fail
scoreboard players set @s aotd_used 0

execute unless score @s mana matches 100.. run tellraw @s {"text":"Not Enough Mana!","color":"red"}
execute unless score @s mana matches 100.. run playsound minecraft:block.ender_chest.close master @s ~ ~ ~ 0.5 1
execute unless score @s mana matches 100.. run return fail

tag @s add this5

playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.4
summon marker ^ ^1 ^1 {Tags:["aotd_hit_detection","aotd_p"]}
summon marker ^ ^1 ^2 {Tags:["aotd_hit_detection"]}
summon marker ^ ^1 ^3 {Tags:["aotd_hit_detection","aotd_p"]}
summon marker ^ ^1 ^4 {Tags:["aotd_hit_detection"]}
summon marker ^ ^1 ^5 {Tags:["aotd_hit_detection","aotd_p"]}
summon marker ^ ^1 ^6 {Tags:["aotd_hit_detection"]}
summon marker ^ ^1 ^7 {Tags:["aotd_hit_detection","aotd_p"]}
summon marker ^ ^1 ^8 {Tags:["aotd_hit_detection"]}
summon marker ^ ^1 ^9 {Tags:["aotd_hit_detection","aotd_p"]}
execute as @e[distance=..12,type=marker,tag=aotd_hit_detection] at @s run tp @s ~ ~ ~ facing entity @p[tag=this5] eyes
execute at @e[type=marker,tag=aotd_p] run function main:misc/particle/aotd
execute as @e[distance=..12,type=marker,tag=aotd_hit_detection] at @s run tag @e[type=!#cw_hp_disp:no_hp,distance=..2,type=!player] add aotd_damage

tag @s add using_magic
execute as @e[distance=..12,tag=aotd_damage,tag=!immune_magic] at @s run function main:player/magic_damage

kill @e[type=marker,tag=aotd_hit_detection]
tag @s remove using_magic
tag @e[tag=aotd_damage] remove aotd_damage
tag @s remove this5
scoreboard players set @s mana_usage 100
scoreboard players set @s mana_usage_reason 6
scoreboard players remove @s mana 100