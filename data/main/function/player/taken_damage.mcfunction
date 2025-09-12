# init
function main:player/stats/damage_reduction
scoreboard players operation %hp player_damage_math = @s hp
scoreboard players operation %def player_damage_math = @s def


# insert mob damage here ig
#execute unless entity @s[tag=fall_damage_calc] on attacker store result score %damage player_damage_math run random value 1..100
scoreboard players set %damage player_damage_math 100

# damage_final = damage_raw * 100 / (def + 100)
scoreboard players add %def player_damage_math 100
scoreboard players operation %damage player_damage_math *= 100 int
scoreboard players operation %damage player_damage_math /= %def player_damage_math


# damage reduction stuff
scoreboard players operation %damage player_damage_math *= 100 int
scoreboard players operation %damage player_damage_math /= @s damage_reduction


# damage itself
scoreboard players operation @s hp -= %damage player_damage_math
tellraw @s {"score":{"name":"%damage","objective":"player_damage_math"}}
tag @s remove fall_damage_calc