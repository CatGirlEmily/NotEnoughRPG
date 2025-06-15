execute if items entity @s weapon.mainhand iron_sword[custom_data~{undead_sword:true}] run scoreboard players set @s strength_weapon_bonus 30

execute if predicate main:look_at/undead if items entity @s weapon.mainhand diamond_sword[custom_data~{undead_sword:true}] run scoreboard players add @s multiplier 100