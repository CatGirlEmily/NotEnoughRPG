title @s times 0 10 0
#execute on attacker run say @s

scoreboard players operation %hp player_damage_math = @s hp
scoreboard players operation %def player_damage_math = @s def
execute store result score %damage player_damage_math run random value 1..100
#execute on attacker store result score %damage player_damage_math run random value 1..100

scoreboard players operation %damage player_damage_math *= 100 int
scoreboard players operation %damage2 player_damage_math = %damage player_damage_math
scoreboard players operation %def player_damage_math *= 100 int
scoreboard players operation %def2 player_damage_math = %def player_damage_math
scoreboard players add %def player_damage_math 10000
scoreboard players operation %def player_damage_math /= %def2 player_damage_math
scoreboard players operation %damage2 player_damage_math /= %def player_damage_math
scoreboard players operation %damage player_damage_math -= %damage2 player_damage_math
execute unless entity @s[tag=full_pumpkin] run scoreboard players operation %damage player_damage_math /= 100 int
execute if entity @s[tag=full_pumpkin] run scoreboard players operation %damage player_damage_math /= 90 int

execute if score %damage player_damage_math matches ..0 run scoreboard players set %damage player_damage_math 0
scoreboard players operation @s hp -= %damage player_damage_math

scoreboard players set @s player_damage_trigger1 0
scoreboard players set @s player_damage_trigger2 0
scoreboard players set @s player_damage_trigger3 0