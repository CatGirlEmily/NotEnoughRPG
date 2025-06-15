execute if items entity @s weapon.mainhand minecraft:diamond_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/diamond_sword2
execute if items entity @s weapon.mainhand minecraft:diamond_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/diamond_sword

execute if items entity @s weapon.mainhand diamond_sword[custom_data~{diamond_sword:true}] run scoreboard players set @s strength_weapon_bonus 35