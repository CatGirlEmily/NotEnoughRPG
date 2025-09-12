### damage calculation
## (5 + Base Damage) * (1 + bow_strength/100) zaczynajac od konca

execute store result score %critchance random run random value 1..100
execute unless score @s bow_cr >= %critchance random run scoreboard players set @s bow_cd 101
execute unless score @s bow_cr >= %critchance random run scoreboard players set %critchance random -1

scoreboard players operation %temp_main damage_math = @s bow_strength
scoreboard players operation %temp_main damage_math += 100 int
scoreboard players operation %temp_main damage_math *= @s bow_base_weapon_damage
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s bow_add_multiplier
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s bow_mul_multiplier
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s bow_cd
scoreboard players operation %temp_main damage_math /= 100 int


scoreboard players operation @s damage_math = %temp_main damage_math

advancement revoke @s only entity_hit_matching:arrow_hurt
# apply
execute as @e[tag=hurt_calc] run scoreboard players operation @s mob_hp -= %temp_main damage_math
function main:misc/damage_indicator/damage
execute as @e[tag=hurt_calc] if score @s mob_hp matches ..0 on attacker at @s run damage @n[tag=hurt_calc] 10000 main:no_hurt by @s

tag @e[tag=hurt_calc] remove hurt_calc