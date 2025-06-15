execute unless score @s fall_d matches 550.. run return run scoreboard players set @s fall_d 0

scoreboard players operation %H player_damage_math = @s fall_d
scoreboard players set @s fall_d 0
scoreboard players add %H player_damage_math 100
scoreboard players operation %H player_damage_math /= 100 int
scoreboard players remove %H player_damage_math 5
scoreboard players operation %H player_damage_math *= 66 int
scoreboard players operation %H player_damage_math /= 10 int

scoreboard players operation %hp player_damage_math = @s hp
scoreboard players operation %def player_damage_math = @s def
scoreboard players operation %damage player_damage_math = %H player_damage_math

scoreboard players operation %damage player_damage_math *= 100 int
scoreboard players operation %damage2 player_damage_math = %damage player_damage_math
scoreboard players operation %def player_damage_math *= 100 int
scoreboard players operation %def2 player_damage_math = %def player_damage_math
scoreboard players add %def player_damage_math 10000
scoreboard players operation %def player_damage_math /= %def2 player_damage_math
scoreboard players operation %damage2 player_damage_math /= %def player_damage_math
scoreboard players operation %damage player_damage_math -= %damage2 player_damage_math

scoreboard players set %ff player_damage_math 0
execute if data entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."minecraft:feather_falling" store result score %ff player_damage_math run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."minecraft:feather_falling"
scoreboard players operation %ff player_damage_math *= 5 int
scoreboard players operation %ff player_damage_math += 100 int
scoreboard players operation %damage player_damage_math /= %ff player_damage_math

execute if score %damage player_damage_math matches ..0 run scoreboard players set %damage player_damage_math 0
scoreboard players operation @s hp -= %damage player_damage_math
damage @s 0.3 generic_kill
