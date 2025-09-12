scoreboard players remove @s starlight_duration 1

scoreboard players operation %r4 temp = @s starlight_duration
scoreboard players operation %r4 temp %= 4 int
execute if score %r4 temp matches 0 at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.5

execute at @s run particle minecraft:firework ~ ~ ~ 3 3 3 0 10

### hit
scoreboard players operation %r20 temp = @s starlight_duration
scoreboard players operation %r20 temp %= 20 int
execute unless score %r20 temp matches 0 run return fail

# post-check
scoreboard players set @s damage_trigger 1
scoreboard players set %critchance random -2
execute if score @s starlight_memory matches 0 run scoreboard players operation @s starlight_memory = @s max_mana

scoreboard players set %damage starlight_memory 50
scoreboard players operation %var1 starlight_memory = @s starlight_memory
scoreboard players operation %damage starlight_memory *= %var1 starlight_memory
scoreboard players operation %damage starlight_memory /= 100 int
scoreboard players operation @s damage_math = %damage starlight_memory

tag @s add using_magic
execute at @s as @e[type=!player,type=!#cw_hp_disp:no_hp,tag=!immune_magic,distance=..3.5] at @s run function main:misc/imtoolazytodostarlightinfunction
tag @s remove using_magic
scoreboard players set @a damage_trigger 0
scoreboard players set @a damage_math 0