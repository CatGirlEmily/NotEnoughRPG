execute unless score @s fall_d matches 550.. run return run scoreboard players set @s fall_d 0

scoreboard players operation %damage player_damage_math = @s fall_d
scoreboard players set @s fall_d 0
scoreboard players remove %damage player_damage_math 500
scoreboard players operation %damage player_damage_math *= 66 int
scoreboard players operation %damage player_damage_math /= 10 int

damage @s 0.001 minecraft:generic_kill

scoreboard players set %ff player_damage_math 0
execute if data entity @s equipment.feet.components."minecraft:enchantments"."minecraft:feather_falling" store result score %ff player_damage_math run data get entity @s equipment.feet.components."minecraft:enchantments"."minecraft:feather_falling"
scoreboard players operation %ff player_damage_math *= 10 int
scoreboard players operation %ff player_damage_math += 100 int
scoreboard players operation %damage player_damage_math /= %ff player_damage_math

execute if score %damage player_damage_math matches ..0 run scoreboard players set %damage player_damage_math 0
tag @s add fall_damage_calc
function main:player/taken_damage
