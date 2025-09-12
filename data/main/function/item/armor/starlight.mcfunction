execute if items entity @s armor.* golden_helmet[custom_data~{starlight:true}] run scoreboard players add @s max_hp 30
execute if items entity @s armor.* leather_chestplate[custom_data~{starlight:true}] run scoreboard players add @s max_hp 30
execute if items entity @s armor.* golden_leggings[custom_data~{starlight:true}] run scoreboard players add @s max_hp 30
execute if items entity @s armor.* leather_boots[custom_data~{starlight:true}] run scoreboard players add @s max_hp 30

execute if items entity @s armor.* golden_helmet[custom_data~{starlight:true}] run scoreboard players add @s max_mana 50
execute if items entity @s armor.* leather_chestplate[custom_data~{starlight:true}] run scoreboard players add @s max_mana 50
execute if items entity @s armor.* golden_leggings[custom_data~{starlight:true}] run scoreboard players add @s max_mana 50
execute if items entity @s armor.* leather_boots[custom_data~{starlight:true}] run scoreboard players add @s max_mana 50

tag @s remove full_starlight
execute if items entity @s armor.feet *[custom_data~{starlight:true}] if items entity @s armor.legs *[custom_data~{starlight:true}] if items entity @s armor.chest *[custom_data~{starlight:true}] if items entity @s armor.head *[custom_data~{starlight:true}] run tag @s add full_starlight

execute unless entity @s[tag=full_starlight] run return fail
scoreboard players operation %temp max_mana = @s max_mana
scoreboard players operation %temp max_mana /= 33 int
scoreboard players operation @s health_regen += %temp max_mana