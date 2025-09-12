execute if dimension minecraft:the_end if items entity @s armor.* player_head[custom_data~{ender:true}] run tag @s add double_helmet
execute if dimension minecraft:the_end if items entity @s armor.* chainmail_chestplate[custom_data~{ender:true}] run tag @s add double_chestplate
execute if dimension minecraft:the_end if items entity @s armor.* chainmail_leggings[custom_data~{ender:true}] run tag @s add double_leggings
execute if dimension minecraft:the_end if items entity @s armor.* chainmail_boots[custom_data~{ender:true}] run tag @s add double_boots

execute if items entity @s armor.* player_head[custom_data~{ender:true}] run scoreboard players add @s max_hp 20
execute if items entity @s armor.* chainmail_chestplate[custom_data~{ender:true}] run scoreboard players add @s max_hp 30
execute if items entity @s armor.* chainmail_leggings[custom_data~{ender:true}] run scoreboard players add @s max_hp 25
execute if items entity @s armor.* chainmail_boots[custom_data~{ender:true}] run scoreboard players add @s max_hp 15

execute if items entity @s[tag=double_helmet] armor.* player_head[custom_data~{ender:true}] run scoreboard players add @s max_hp 20
execute if items entity @s[tag=double_chestplate] armor.* chainmail_chestplate[custom_data~{ender:true}] run scoreboard players add @s max_hp 30
execute if items entity @s[tag=double_leggings] armor.* chainmail_leggings[custom_data~{ender:true}] run scoreboard players add @s max_hp 25
execute if items entity @s[tag=double_boots] armor.* chainmail_boots[custom_data~{ender:true}] run scoreboard players add @s max_hp 15