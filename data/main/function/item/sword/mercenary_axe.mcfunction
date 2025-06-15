execute unless score @s combat matches 4.. run return fail
 
execute if items entity @s weapon.mainhand iron_axe[custom_data~{mercenary_axe:true}] run scoreboard players set @s strength_weapon_bonus 70
execute if items entity @s weapon.mainhand iron_axe[custom_data~{mercenary_axe:true}] run scoreboard players set @s strength_weapon_bonus_rl 20