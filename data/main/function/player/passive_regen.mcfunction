scoreboard players operation %to_heal temp = @s max_hp

scoreboard players operation %to_heal temp /= 50 int

scoreboard players operation %to_heal temp *= @s health_regen
scoreboard players operation %to_heal temp /= 100 int
scoreboard players operation @s hp += %to_heal temp