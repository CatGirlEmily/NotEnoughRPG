execute if items entity @s weapon.mainhand minecraft:iron_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/iron_sword2
execute if items entity @s weapon.mainhand minecraft:iron_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/iron_sword

execute if items entity @s weapon.mainhand iron_sword[custom_data~{iron_sword:true}] run scoreboard players set @s strength_weapon_bonus 30