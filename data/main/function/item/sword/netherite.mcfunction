execute if items entity @s weapon.mainhand minecraft:netherite_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/netherite_sword2
execute if items entity @s weapon.mainhand minecraft:netherite_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/netherite_sword

execute if items entity @s weapon.mainhand netherite_sword[custom_data~{netherite_sword:true}] run scoreboard players set @s strength_weapon_bonus 50