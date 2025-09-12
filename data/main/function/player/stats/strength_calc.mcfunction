###### important to note that none of the values here are multiplied to work as float
###### the number from here will be used to display in guis or just work as api.
    scoreboard players set @s strength 1
    scoreboard players operation %combat_div2 temp = @s combat
    scoreboard players operation %combat_div2 temp /= 2 int
    scoreboard players operation @s strength += %combat_div2 temp

# dont ask me why i use these names here :sob:
    scoreboard players set %strength_feet temp 0
    scoreboard players set %strength_legs temp 0
    scoreboard players set %strength_chest temp 0
    scoreboard players set %strength_helmet temp 0


### custom swords
execute if items entity @s weapon.mainhand golden_sword[custom_data~{ROGUE_SWORD:true}] run return run scoreboard players add @s strength 20
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{ASPECT_OF_THE_END:true}] run return run scoreboard players add @s strength 100
execute if items entity @s weapon.mainhand golden_sword[custom_data~{CLEAVER:true}] run return run scoreboard players add @s strength 10
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{END_SWORD:true}] run return run scoreboard players add @s strength 0
execute if items entity @s weapon.mainhand golden_sword[custom_data~{FANCY_SWORD:true}] run return run scoreboard players add @s strength 20
execute if items entity @s weapon.mainhand iron_sword[custom_data~{FLAMING_SWORD:true}] run return run scoreboard players add @s strength 20
execute if items entity @s weapon.mainhand iron_sword[custom_data~{HUNTER_KNIFE:true}] run return run scoreboard players add @s strength 0
execute if score @s combat matches 4.. if items entity @s weapon.mainhand iron_axe[custom_data~{MERCENARY_AXE:true}] run return run scoreboard players add @s strength 20
execute if items entity @s weapon.mainhand prismarine_shard[custom_data~{PRISMARINE_BLADE:true}] run return run scoreboard players add @s strength 25
execute if items entity @s weapon.mainhand iron_axe[custom_data~{RAIDER_AXE:true}] run return run scoreboard players add @s strength 50
execute if items entity @s weapon.mainhand iron_sword[custom_data~{SPIDER_SWORD:true}] run return run scoreboard players add @s strength 0
execute if items entity @s weapon.mainhand wooden_sword[custom_data~{SQUID_SWORD:true}] run return run scoreboard players add @s strength 1
execute if items entity @s weapon.mainhand iron_sword[custom_data~{SQUIRE_SWORD:true}] run return run scoreboard players add @s strength 10
execute if items entity @s weapon.mainhand wooden_sword[custom_data~{TACTICIAN_SWORD:true}] run return run scoreboard players add @s strength 0
execute if items entity @s weapon.mainhand iron_sword[custom_data~{UNDEAD_SWORD:true}] run return run scoreboard players add @s strength 0
execute if items entity @s weapon.mainhand iron_sword[custom_data~{GOLEM_SWORD:true}] run return run scoreboard players add @s strength 80
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{ASPECT_OF_THE_DRAGONS:true}] run return run scoreboard players add @s strength 100
execute if items entity @s weapon.mainhand iron_sword[custom_data~{BLADE_OF_THE_VOLCANO:true}] run return run scoreboard players add @s strength 70
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{VOID_SWORD:true}] run return run function main:player/stats_misc/enderarmor


### armor
# empty for now


#### other sources