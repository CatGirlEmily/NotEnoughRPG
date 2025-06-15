execute if items entity @s weapon.mainhand prismarine_shard[custom_data~{prismarine_blade:true}] run scoreboard players set @s strength_weapon_bonus 50
execute if items entity @s weapon.mainhand prismarine_shard[custom_data~{prismarine_blade:true}] run scoreboard players set @s strength_weapon_bonus_rl 25

execute at @s if block ~ ~ ~ water if items entity @s weapon.mainhand prismarine_shard[custom_data~{prismarine_blade:true}] run scoreboard players add @s multiplier 200