execute unless score @s combat matches 4.. run return fail
 
execute if items entity @s weapon.mainhand iron_sword[custom_data~{squire_sword:true}] run scoreboard players set @s strength_weapon_bonus 50
execute if items entity @s weapon.mainhand iron_sword[custom_data~{squire_sword:true}] run scoreboard players set @s strength_weapon_bonus_rl 10