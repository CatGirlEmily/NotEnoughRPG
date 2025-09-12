scoreboard players set %growth1 temp 0
scoreboard players set %growth2 temp 0
scoreboard players set %growth3 temp 0
scoreboard players set %growth4 temp 0
scoreboard players set %growth_full temp 0

execute if data entity @s equipment.feet.components."minecraft:enchantments"."main:growth" store result score %growth1 temp run data get entity @s equipment.feet.components."minecraft:enchantments"."main:growth"
execute if data entity @s equipment.legs.components."minecraft:enchantments"."main:growth" store result score %growth2 temp run data get entity @s equipment.legs.components."minecraft:enchantments"."main:growth"
execute if data entity @s equipment.chest.components."minecraft:enchantments"."main:growth" store result score %growth3 temp run data get entity @s equipment.chest.components."minecraft:enchantments"."main:growth"
execute if data entity @s equipment.head.components."minecraft:enchantments"."main:growth" store result score %growth4 temp run data get entity @s equipment.head.components."minecraft:enchantments"."main:growth"

scoreboard players operation %growth_full temp = %growth1 temp
scoreboard players operation %growth_full temp += %growth2 temp
scoreboard players operation %growth_full temp += %growth3 temp
scoreboard players operation %growth_full temp += %growth4 temp
scoreboard players operation %growth_full temp *= 15 int
scoreboard players operation @s max_hp += %growth_full temp