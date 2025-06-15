execute if items entity @s weapon.mainhand diamond_sword[custom_data~{end_sword:true}] run scoreboard players set @s strength_weapon_bonus 35

execute if predicate main:look_at/ender if items entity @s weapon.mainhand diamond_sword[custom_data~{end_sword:true}] run scoreboard players add @s multiplier 100