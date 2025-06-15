execute if items entity @s weapon.mainhand minecraft:stone_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/stone_sword2
execute if items entity @s weapon.mainhand minecraft:stone_sword unless data entity @s SelectedItem.components."minecraft:lore" run item modify entity @s weapon.mainhand main:vanilla/sword/stone_sword

execute if items entity @s weapon.mainhand stone_sword[custom_data~{stone_sword:true}] run scoreboard players set @s strength_weapon_bonus 25