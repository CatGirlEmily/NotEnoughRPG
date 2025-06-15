scoreboard players set %bonus_multiplier damage_math 1
scoreboard players set %cr_pet_bonus damage_math 0
scoreboard players set %cd_pet_bonus damage_math 0
scoreboard players set %strength_pet_bonus damage_math 0

## pre-counting
scoreboard players set %sharp_bonus damage_math 0
execute if data entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:sharpness" store result score %sharp_bonus damage_math run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:sharpness"
scoreboard players operation %sharp_bonus damage_math *= 9 int
scoreboard players operation @s multiplier += %sharp_bonus damage_math
scoreboard players operation %combat_bonus damage_math = @s combat
scoreboard players operation %combat_bonus damage_math *= 4 int
scoreboard players operation @s multiplier += %combat_bonus damage_math
scoreboard players set %smite_bonus damage_math 0
scoreboard players set %bania damage_math 0
scoreboard players set %enderslayer damage_math 0
execute if predicate main:look_at/undead if data entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:smite" store result score %smite_bonus damage_math run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:smite"
execute if predicate main:look_at/arthropod if data entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:bane_of_arthropods" store result score %bania damage_math run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:bane_of_arthropods"

scoreboard players operation %smite_bonus damage_math *= 15 int
scoreboard players operation %bania damage_math *= 15 int

scoreboard players operation @s multiplier += %smite_bonus damage_math
scoreboard players operation @s multiplier += %bania damage_math
scoreboard players operation @s multiplier += %enderslayer damage_math
scoreboard players set %enderslayer damage_math 0


### counting stats
# i multiply every value x10 because it doesnt support float
scoreboard players set @s cr 300
execute if data entity @s {OnGround:0b} run scoreboard players set @s cr 350
scoreboard players operation @s cr_combat_div2 = @s combat
scoreboard players operation @s cr_combat_div2 *= 5 int
scoreboard players operation %cr_armor_bonus damage_math += %cr_boots damage_math
scoreboard players operation %cr_armor_bonus damage_math += %cr_legs damage_math
scoreboard players operation %cr_armor_bonus damage_math += %cr_chest damage_math
scoreboard players operation %cr_armor_bonus damage_math += %cr_helmet damage_math
scoreboard players operation %cr_armor_bonus damage_math *= 10 int
scoreboard players operation @s cr_weapon_bonus *= 10 int

scoreboard players operation @s cr += %cr_pet_bonus damage_math
scoreboard players operation @s cr += @s cr_weapon_bonus
scoreboard players operation @s cr += %cr_armor_bonus damage_math
scoreboard players operation @s cr += @s cr_combat_div2

# cd
scoreboard players set @s cd 150
scoreboard players set %cd_critical damage_math 0
execute if data entity @s SelectedItem.components."minecraft:enchantments".levels."main:critical" store result score %cd_critical damage_math run data get entity @s SelectedItem.components."minecraft:enchantments".levels."main:critical"
scoreboard players operation %cd_critical damage_math *= 10 int
scoreboard players operation %cd_armor_bonus damage_math += %cd_boots damage_math
scoreboard players operation %cd_armor_bonus damage_math += %cd_legs damage_math
scoreboard players operation %cd_armor_bonus damage_math += %cd_chest damage_math
scoreboard players operation %cd_armor_bonus damage_math += %cd_helmet damage_math

scoreboard players operation @s cd += %cd_pet_bonus damage_math
scoreboard players operation @s cd += @s cd_weapon_bonus
scoreboard players operation @s cd += %cd_armor_bonus damage_math
scoreboard players operation @s cd += %cd_critical damage_math
scoreboard players operation @s cd /= 10 int

# randomize
execute store result score %critchance random run random value 0..1000
execute if score @s cr < %critchance random run scoreboard players set @s cd 10

# strength
scoreboard players set @s strength 10
scoreboard players operation @s strength_combat_div2 = @s combat
scoreboard players operation @s strength_combat_div2 *= 5 int
scoreboard players operation %strength_armor_bonus damage_math += %strength_boots damage_math
scoreboard players operation %strength_armor_bonus damage_math += %strength_legs damage_math
scoreboard players operation %strength_armor_bonus damage_math += %strength_chest damage_math
scoreboard players operation %strength_armor_bonus damage_math += %strength_helmet damage_math
scoreboard players operation %strength_armor_bonus damage_math *= 10 int
scoreboard players operation @s strength_weapon_bonus_rl *= 10 int

scoreboard players operation @s strength += %strength_pet_bonus damage_math
scoreboard players operation @s strength += %strength_armor_bonus damage_math
scoreboard players operation @s strength += @s strength_combat_div2
scoreboard players operation @s strength += @s strength_weapon_bonus_rl
scoreboard players operation @s strength_weapon_bonus *= 10 int

### damage calculation
scoreboard players set %temp_main damage_math 50
scoreboard players operation %temp_main damage_math += @s strength_weapon_bonus
scoreboard players operation %temp_main damage_math *= @s strength
scoreboard players operation %temp_main damage_math /= 10 int
scoreboard players operation %temp_main damage_math *= @s multiplier
scoreboard players operation %temp_main damage_math += %bonus_multiplier damage_math
scoreboard players operation %temp_main damage_math *= @s cd
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation %temp_main damage_math /= 100 int
scoreboard players operation @s damage_math = %temp_main damage_math

# apply
execute at @s anchored eyes positioned ^ ^ ^2 as @n[nbt={HurtTime:10s},distance=..6,limit=1] run tag @s add hurt_calc
execute as @e[tag=hurt_calc] run scoreboard players operation @s mob_hp -= %temp_main damage_math
function main:misc/damage_indicator/damage
execute as @e[tag=hurt_calc] if score @s mob_hp matches ..0 on attacker at @s run damage @n[tag=hurt_calc] 10000 generic_kill by @s
tag @e remove hurt_calc

execute unless items entity @s weapon.mainhand golden_sword[custom_data~{cleaver_sword:true}] run return fail
scoreboard players operation %temp_main damage_math /= 10 int
execute at @s anchored eyes positioned ^ ^ ^2 as @e[type=!#main:player_threat,distance=..3.3] run damage @s 0.1 generic
execute at @s anchored eyes positioned ^ ^ ^2 as @e[type=!#main:player_threat,distance=..3.3] run scoreboard players operation @s mob_hp -= %temp_main damage_math