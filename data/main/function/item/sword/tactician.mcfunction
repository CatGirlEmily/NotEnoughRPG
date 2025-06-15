execute unless items entity @s weapon.mainhand wooden_sword[custom_data~{tactician_sword:true}] run return fail
scoreboard players set @s cr_weapon_bonus 200
scoreboard players set @s strength_weapon_bonus 50

execute if score @s killed_blaze matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_bogged matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_breeze matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_cave_spider matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_creaking matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_creaking matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_drowned matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_elder_guardian matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_ender_dragon matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_enderman matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_endermite matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_evoker matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_ghast matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_giant matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_guardian matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_hoglin matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_husk matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_magma_cube matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_phantom matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_piglin matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_piglin_brute matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_pillager matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_ravager matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_shulker matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_shulker matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_silverfish matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_skeleton matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_slime matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_spider matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_stray matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_vex matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_vindicator matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_witch matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_wither matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_wither_skeleton matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_zoglin matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_zombie matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_zombie_villager matches 1.. run scoreboard players add @s strength_weapon_bonus 10
execute if score @s killed_zombified_piglin matches 1.. run scoreboard players add @s strength_weapon_bonus 10

item modify entity @s weapon main:tactician