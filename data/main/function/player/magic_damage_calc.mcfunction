scoreboard players operation %temp_main damage_math = @s base_ability_damage
scoreboard players operation %var1 damage_math = @s max_mana
scoreboard players operation %var1 damage_math /= 100 int
scoreboard players operation %var1 damage_math *= @s ability_scaling

scoreboard players operation %temp_main damage_math *= %var1 damage_math
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s magic_add_multiplier
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math *= @s magic_mul_multiplier
scoreboard players operation %temp_main damage_math /= 100 int

scoreboard players operation @s damage_math = %temp_main damage_math