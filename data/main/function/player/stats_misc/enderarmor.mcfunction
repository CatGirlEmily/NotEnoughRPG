scoreboard players set %ender_armor_pieces temp 0
execute if items entity @s armor.feet chainmail_boots[custom_data~{ENDER_BOOTS:true}] run scoreboard players add %ender_armor_pieces temp 20
execute if items entity @s armor.legs chainmail_leggings[custom_data~{ENDER_LEGGINGS:true}] run scoreboard players add %ender_armor_pieces temp 20
execute if items entity @s armor.chest chainmail_chestplate[custom_data~{ENDER_CHESTPLATE:true}] run scoreboard players add %ender_armor_pieces temp 20
execute if items entity @s armor.head player_head[custom_data~{ENDER_HELMET:true}] run scoreboard players add %ender_armor_pieces temp 20

scoreboard players operation @s strength += %ender_armor_pieces temp
item modify entity @s weapon.mainhand main:void