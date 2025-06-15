execute if items entity @s weapon.mainhand minecraft:golden_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/golden_sword2
execute if items entity @s weapon.mainhand minecraft:golden_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/golden_sword

execute if items entity @s weapon.mainhand golden_sword[custom_data~{golden_sword:true}] run scoreboard players set @s strength_weapon_bonus 20