tag @e[tag=!common,tag=!custom,type=!#cw_hp_disp:no_hp] add common

scoreboard players set @a def 0
scoreboard players set @a max_hp 100
scoreboard players set @a health_regen 100
scoreboard players add @a hp 0
scoreboard players set @a max_mana 100
scoreboard players add %mana_regen time 1
scoreboard players add %hp_regen time 1
scoreboard players add %timer mining_speed 1
execute as @a run function main:item/sword/_loop
execute as @a run function main:item/armor/_loop
execute as @a run function main:item/bow/_loop
execute as @a run function main:item/wand/_loop
function main:mob/_loop
execute as @a[scores={vertical_motion=0..}] at @s run function main:misc/vertical_motion

execute as @a run function main:player/balance_hp
execute as @a run function main:player

execute store result score %daytime time run time query daytime
gamerule naturalRegeneration false
gamerule doImmediateRespawn true
gamerule fallDamage false
gamerule locatorBar false
execute if score %hp_regen time matches 40.. run scoreboard players set %hp_regen time 0
execute if score %mana_regen time matches 20.. run scoreboard players set %mana_regen time 0