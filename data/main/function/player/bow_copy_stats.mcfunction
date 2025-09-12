###################################
########## bow base damage #########
###################################
scoreboard players set @s bow_base_weapon_damage 5

execute if items entity @s weapon.mainhand bow[custom_data~{DEFAULT_BOW:true}] run scoreboard players operation @s bow_base_weapon_damage += 30 int
execute if items entity @s weapon.mainhand bow[custom_data~{DECENT_BOW:true}] run scoreboard players operation @s bow_base_weapon_damage += 45 int


############################################
########## bow strength ####################
############################################
scoreboard players set @s bow_strength 1

scoreboard players operation %combat_div2 temp = @s combat
scoreboard players operation %combat_div2 temp /= 2 int
scoreboard players operation @s bow_strength += %combat_div2 temp


############################################
########## bow additive multiplier #########
############################################
    scoreboard players set @s bow_add_multiplier 100
    scoreboard players operation %combat_bonus damage_math = @s combat
    scoreboard players set %power damage_math 0
    
execute store result score %power damage_math run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:power"
scoreboard players operation %power damage_math *= 10 int
scoreboard players operation @s bow_add_multiplier += %power damage_math

scoreboard players operation %combat_bonus damage_math *= 4 int
scoreboard players operation @s bow_add_multiplier += %combat_bonus damage_math
### armor
execute if entity @s[tag=full_pumpkin] run scoreboard players add @s bow_add_multiplier 10

###################################################
########## bow multiplicative multiplier #########
###############################################
scoreboard players set @s bow_mul_multiplier 100

###################################################
########## bow crit rate #########################
##################################################
scoreboard players set @s bow_cr 30
scoreboard players operation %combat_bonus temp = @s combat
scoreboard players operation %combat_bonus temp /= 2 int
scoreboard players operation @s bow_cr += %combat_bonus temp

###################################################
########## bow crit damage #########################
##################################################
scoreboard players set @s bow_cd 150

######################## reset ########################
scoreboard players set @s bow_used 0