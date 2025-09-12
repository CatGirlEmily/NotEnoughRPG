### numbers here are meant to be used as percentage, so everything is multiplied by 100
    scoreboard players set @p[tag=using_magic] magic_add_multiplier 100
    scoreboard players operation %combat_bonus damage_math = @p[tag=using_magic] combat
    scoreboard players set %smite damage_math 0
    scoreboard players set %baneofart damage_math 0
    scoreboard players set %impaling damage_math 0
    scoreboard players set %ender damage_math 0
    ### sources of additive multipliers

scoreboard players operation %combat_bonus damage_math *= 4 int
scoreboard players operation @p[tag=using_magic] magic_add_multiplier += %combat_bonus damage_math


### armor
execute if entity @p[tag=using_magic,tag=full_pumpkin] run scoreboard players add @p[tag=using_magic] magic_add_multiplier 10

### enchants
execute if entity @s[type=#sensitive_to_smite] store result score %smite damage_math run data get entity @p[tag=using_magic] SelectedItem.components."minecraft:enchantments"."minecraft:smite"
scoreboard players operation %smite damage_math *= 20 int
scoreboard players operation @p[tag=using_magic] magic_add_multiplier += %smite damage_math

execute if entity @s[type=#sensitive_to_bane_of_arthropods] store result score %baneofart damage_math run data get entity @p[tag=using_magic] SelectedItem.components."minecraft:enchantments"."minecraft:bane_of_arthropods"
scoreboard players operation %baneofart damage_math *= 20 int
scoreboard players operation @p[tag=using_magic] magic_add_multiplier += %baneofart damage_math

execute if entity @s[type=#sensitive_to_impaling] store result score %impaling damage_math run data get entity @p[tag=using_magic] SelectedItem.components."minecraft:enchantments"."minecraft:impaling"
scoreboard players operation %impaling damage_math *= 20 int
scoreboard players operation @p[tag=using_magic] magic_add_multiplier += %impaling damage_math

execute if entity @s[type=#main:ender] store result score %ender damage_math run data get entity @p[tag=using_magic] SelectedItem.components."minecraft:enchantments"."main:ender_slayer"
scoreboard players operation %ender damage_math *= 15 int
scoreboard players operation @p[tag=using_magic] magic_add_multiplier += %ender damage_math