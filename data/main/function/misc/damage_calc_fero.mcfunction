### damage calculation
# skipping calc due to it already being present

execute at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush master @s ~ ~ ~ 1 1.5
execute store result score %critchance random run random value 1..100

execute unless score @s cr >= %critchance random run scoreboard players set @s cd 101
execute unless score @s cr >= %critchance random run scoreboard players set %critchance random -1

scoreboard players operation %temp_main damage_math = @s strength
scoreboard players operation %temp_main damage_math += 100 int
scoreboard players operation %temp_main damage_math *= @s base_weapon_damage
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s add_multiplier
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s mul_multiplier
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s cd
scoreboard players operation %temp_main damage_math /= 100 int


scoreboard players operation @s damage_math = %temp_main damage_math

# apply
execute as @e[tag=hurt_calc] run scoreboard players operation @s mob_hp -= %temp_main damage_math
function main:misc/damage_indicator/damage
execute as @e[tag=hurt_calc] if score @s mob_hp matches ..0 on attacker at @s run damage @n[tag=hurt_calc] 10000 main:no_hurt by @s

execute unless items entity @s weapon.mainhand golden_sword[custom_data~{CLEAVER:true}] run return fail
scoreboard players operation %temp_main damage_math /= 5 int
execute at @e[tag=hurt_calc] as @e[type=!#main:player_threat,distance=..3.3,tag=!hurt_calc] run damage @s 0.001 main:no_hurt
execute at @e[tag=hurt_calc] as @e[type=!#main:player_threat,distance=..3.3,tag=!hurt_calc] run scoreboard players operation @s mob_hp -= %temp_main damage_math