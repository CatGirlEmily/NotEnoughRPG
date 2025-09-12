scoreboard players add @s raider_real_kills 0
scoreboard players add @s raider_kills 0
execute unless items entity @s weapon.mainhand iron_axe[custom_data~{RAIDER_AXE:true}] run return run scoreboard objectives remove raider_real_kills


scoreboard players operation @s raider_kills = @s mob_kills
scoreboard players operation @s raider_kills /= 10 int
execute if score @s raider_kills matches 36.. run scoreboard players set @s raider_kills 35

scoreboard players set @s kill_total 80
scoreboard players operation @s kill_total += @s raider_kills

#item modify entity @s weapon main:tactician
item modify entity @s weapon main:raider
scoreboard objectives add raider_real_kills minecraft.custom:minecraft.mob_kills
execute if score @s raider_real_kills matches 1.. run scoreboard players add @s coins 20
execute if score @s raider_real_kills matches 1.. run scoreboard players remove @s raider_real_kills 1