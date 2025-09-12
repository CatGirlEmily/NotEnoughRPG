tag @s remove full_leaflet
execute if items entity @s armor.feet *[custom_data~{leaflet:true}] if items entity @s armor.legs *[custom_data~{leaflet:true}] if items entity @s armor.chest *[custom_data~{leaflet:true}] if items entity @s armor.head *[custom_data~{leaflet:true}] run tag @s add full_leaflet

execute if items entity @s armor.* oak_leaves[custom_data~{leaflet:true}] run scoreboard players add @s max_hp 20
execute if items entity @s armor.* leather_chestplate[custom_data~{leaflet:true}] run scoreboard players add @s max_hp 35
execute if items entity @s armor.* leather_leggings[custom_data~{leaflet:true}] run scoreboard players add @s max_hp 30
execute if items entity @s armor.* leather_boots[custom_data~{leaflet:true}] run scoreboard players add @s max_hp 15

execute at @s unless biome ~ ~ ~ #is_forest run return fail
execute if entity @s[tag=full_leaflet] if score @s leaflet_heal matches 20.. run scoreboard players operation %leaflet_heal temp = @s max_hp
execute if entity @s[tag=full_leaflet] if score @s leaflet_heal matches 20.. run scoreboard players operation %leaflet_heal temp /= 20 int
execute if entity @s[tag=full_leaflet] if score @s leaflet_heal matches 20.. run scoreboard players operation @s hp += %leaflet_heal temp
