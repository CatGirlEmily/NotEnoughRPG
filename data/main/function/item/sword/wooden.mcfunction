execute if items entity @s weapon.mainhand minecraft:wooden_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/wooden_sword2
execute if items entity @s weapon.mainhand minecraft:wooden_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/wooden_sword

execute if items entity @s weapon.mainhand wooden_sword[custom_data~{wooden_sword:true}] run scoreboard players set @s strength_weapon_bonus 20