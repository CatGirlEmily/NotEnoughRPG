advancement revoke @s only main:ability/celeste_wand

execute if score @s celeste_used matches ..3 run return fail
scoreboard players set @s celeste_used 0

execute unless score @s mana matches 70.. run tellraw @s {"text":"Not Enough Mana!","color":"red"}
execute unless score @s mana matches 70.. run playsound minecraft:block.ender_chest.close master @s ~ ~ ~ 0.5 1
execute unless score @s mana matches 70.. run return fail

execute if score @s celeste_used matches ..3 unless entity @e[type=!player,type=!#cw_hp_disp:no_hp,tag=!immune_magic,distance=..10,limit=1,sort=nearest] run return run tellraw @s {"text":"No valid targets nearby!","color":"red"}



tag @s add using_magic
scoreboard players set @s mana_usage 70
scoreboard players set @s mana_usage_reason 4
scoreboard players remove @s mana 70
execute at @e[type=!player,type=!#cw_hp_disp:no_hp,tag=!immune_magic,distance=..10,limit=1,sort=nearest] run summon lightning_bolt ~ ~-1 ~
execute as @e[type=!player,type=!#cw_hp_disp:no_hp,tag=!immune_magic,distance=..10,limit=1,sort=nearest] at @s run function main:player/magic_damage
schedule function main:misc/stopsound_thunderbolt 1t append

tag @s remove using_magic