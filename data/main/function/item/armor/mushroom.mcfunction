execute if items entity @s armor.feet *[custom_data~{mushroom:true}] if items entity @s armor.legs *[custom_data~{mushroom:true}] if items entity @s armor.chest *[custom_data~{mushroom:true}] if items entity @s armor.head *[custom_data~{mushroom:true}] run effect give @s night_vision infinite 0 true

execute if score %daytime time matches 13000.. if items entity @s armor.* leather_helmet[custom_data~{mushroom:true}] run scoreboard players add @s def 45
execute if score %daytime time matches 13000.. if items entity @s armor.* leather_chestplate[custom_data~{mushroom:true}] run scoreboard players add @s def 75
execute if score %daytime time matches 13000.. if items entity @s armor.* leather_leggings[custom_data~{mushroom:true}] run scoreboard players add @s def 90
execute if score %daytime time matches 13000.. if items entity @s armor.* leather_boots[custom_data~{mushroom:true}] run scoreboard players add @s def 45
execute if score %daytime time matches 13000.. if items entity @s armor.* leather_helmet[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 60
execute if score %daytime time matches 13000.. if items entity @s armor.* leather_chestplate[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 90
execute if score %daytime time matches 13000.. if items entity @s armor.* leather_leggings[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 105
execute if score %daytime time matches 13000.. if items entity @s armor.* leather_boots[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 60


execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_helmet[custom_data~{mushroom:true}] run scoreboard players add @s def 15
execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_chestplate[custom_data~{mushroom:true}] run scoreboard players add @s def 25
execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_leggings[custom_data~{mushroom:true}] run scoreboard players add @s def 30
execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_boots[custom_data~{mushroom:true}] run scoreboard players add @s def 15
execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_helmet[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 20
execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_chestplate[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 30
execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_leggings[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 35
execute unless score %daytime time matches 13000.. if items entity @s armor.* leather_boots[custom_data~{mushroom:true}] run scoreboard players add @s max_hp 20

