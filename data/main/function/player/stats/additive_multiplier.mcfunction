### numbers here are meant to be used as percentage, so everything is multiplied by 100
    scoreboard players set @s add_multiplier 100
    scoreboard players operation %combat_bonus damage_math = @s combat
    scoreboard players set %sharpness damage_math 0
    scoreboard players set %smite damage_math 0
    scoreboard players set %baneofart damage_math 0
    scoreboard players set %impaling damage_math 0
    scoreboard players set %ender damage_math 0
    ### sources of additive multipliers

scoreboard players operation %combat_bonus damage_math *= 4 int
scoreboard players operation @s add_multiplier += %combat_bonus damage_math


### armor
execute if entity @s[tag=full_pumpkin] run scoreboard players add @s add_multiplier 10


### swords
execute if score @s y matches ..59 if items entity @s weapon.mainhand golden_sword[custom_data~{FANCY_SWORD:true}] run scoreboard players add @s add_multiplier 150
execute at @s if block ~ ~ ~ water if items entity @s weapon.mainhand prismarine_shard[custom_data~{PRISMARINE_BLADE:true}] run scoreboard players add @s add_multiplier 200

execute at @s if entity @n[type=#main:ender,sort=nearest,limit=1,tag=hurt_calc] if items entity @s weapon.mainhand diamond_sword[custom_data~{END_SWORD:true}] run scoreboard players add @s add_multiplier 100
execute at @s if entity @n[type=#main:spider,sort=nearest,limit=1,tag=hurt_calc] if items entity @s weapon.mainhand iron_sword[custom_data~{SPIDER_SWORD:true}] run scoreboard players add @s add_multiplier 100
execute at @s if entity @n[type=#undead,sort=nearest,limit=1,tag=hurt_calc] if items entity @s weapon.mainhand iron_sword[custom_data~{UNDEAD_SWORD:true}] run scoreboard players add @s add_multiplier 100


### enchants
execute store result score %sharpness damage_math run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sharpness"
scoreboard players operation %sharpness damage_math *= 10 int
scoreboard players operation @s add_multiplier += %sharpness damage_math

execute at @s if entity @e[type=#sensitive_to_smite,sort=nearest,limit=1,tag=hurt_calc] store result score %smite damage_math run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:smite"
scoreboard players operation %smite damage_math *= 20 int
scoreboard players operation @s add_multiplier += %smite damage_math

execute at @s if entity @e[type=#sensitive_to_bane_of_arthropods,sort=nearest,limit=1,tag=hurt_calc] store result score %baneofart damage_math run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:bane_of_arthropods"
scoreboard players operation %baneofart damage_math *= 20 int
scoreboard players operation @s add_multiplier += %baneofart damage_math

execute at @s if entity @e[type=#sensitive_to_impaling,sort=nearest,limit=1,tag=hurt_calc] store result score %impaling damage_math run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:impaling"
scoreboard players operation %impaling damage_math *= 20 int
scoreboard players operation @s add_multiplier += %impaling damage_math

execute at @s if entity @e[type=#main:ender,sort=nearest,limit=1,tag=hurt_calc] store result score %ender damage_math run data get entity @s SelectedItem.components."minecraft:enchantments"."main:ender_slayer"
scoreboard players operation %ender damage_math *= 15 int
scoreboard players operation @s add_multiplier += %ender damage_math

# ignore plz
execute at @s at @n[tag=hurt_calc] if block ~ ~ ~ lava if items entity @s weapon.mainhand iron_sword[custom_data~{BLADE_OF_THE_VOLCANO:true}] run scoreboard players add @s strength 100