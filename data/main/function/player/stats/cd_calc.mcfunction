### numbers here are meant to be used as percentage, so everything is multiplied by 100 alr
    scoreboard players set @s cd 150
    scoreboard players set %critical damage_math 0

execute store result score %critical damage_math run data get entity @s SelectedItem.components."minecraft:enchantments"."main:critical"
scoreboard players operation %critical damage_math *= 10 int
scoreboard players operation @s cd += %critical damage_math

execute if items entity @s weapon.mainhand iron_sword[custom_data~{BLADE_OF_THE_VOLCANO:true}] run scoreboard players add @s cd 20