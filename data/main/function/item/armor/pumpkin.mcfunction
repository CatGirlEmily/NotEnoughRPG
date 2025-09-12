tag @s remove full_pumpkin
execute if items entity @s armor.feet *[custom_data~{pumpkin:true}] if items entity @s armor.legs *[custom_data~{pumpkin:true}] if items entity @s armor.chest *[custom_data~{pumpkin:true}] if items entity @s armor.head *[custom_data~{pumpkin:true}] run tag @s add full_pumpkin



execute if items entity @s armor.* leather_helmet[custom_data~{pumpkin:true}] run scoreboard players add @s max_hp 10
execute if items entity @s armor.* leather_chestplate[custom_data~{pumpkin:true}] run scoreboard players add @s max_hp 10
execute if items entity @s armor.* leather_leggings[custom_data~{pumpkin:true}] run scoreboard players add @s max_hp 10
execute if items entity @s armor.* leather_boots[custom_data~{pumpkin:true}] run scoreboard players add @s max_hp 10

