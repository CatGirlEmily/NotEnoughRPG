###### important to note that none of the values here are multiplied to work as float
###### the number from here will be used to display in guis or just work as api.
## also including ability scaling in here (as float so x100)
    scoreboard players set @s base_ability_damage 0
    scoreboard players set @s ability_scaling 1


### custom swords BASE damage
execute if items entity @s weapon.mainhand iron_sword[custom_data~{GOLEM_SWORD:true}] run scoreboard players add @s base_ability_damage 250
execute if items entity @s weapon.mainhand stick[custom_data~{CELESTE_WAND:true}] run scoreboard players add @s base_ability_damage 40
execute if items entity @s weapon.mainhand stick[custom_data~{STARLIGHT_WAND:true}] run scoreboard players add @s base_ability_damage 50
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{ASPECT_OF_THE_DRAGONS:true}] run scoreboard players add @s base_ability_damage 12000



### custom swords ABILITY scaling
execute if items entity @s weapon.mainhand iron_sword[custom_data~{GOLEM_SWORD:true}] run scoreboard players set @s ability_scaling 100
execute if items entity @s weapon.mainhand stick[custom_data~{CELESTE_WAND:true}] run scoreboard players set @s ability_scaling 100
execute if items entity @s weapon.mainhand stick[custom_data~{STARLIGHT_WAND:true}] run scoreboard players set @s ability_scaling 100
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{ASPECT_OF_THE_DRAGONS:true}] run scoreboard players set @s ability_scaling 10