###### important to note that none of the values here are multiplied to work as float
###### the number from here will be used to display in guis or just work as api.
    scoreboard players set @s base_weapon_damage 5


#### other sources
# to add hot potato books but yeah not yet

### vanilla
execute if items entity @s weapon.mainhand wooden_sword[custom_data~{WOODEN_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 20
execute if items entity @s weapon.mainhand stone_sword[custom_data~{STONE_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 25
execute if items entity @s weapon.mainhand iron_sword[custom_data~{IRON_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 30
execute if items entity @s weapon.mainhand *[custom_data~{DIAMOND_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 35
execute if items entity @s weapon.mainhand netherite_sword[custom_data~{NETHERITE_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 50

### custom swords
execute if items entity @s weapon.mainhand golden_sword[custom_data~{ROGUE_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 20
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{ASPECT_OF_THE_END:true}] run return run scoreboard players add @s base_weapon_damage 100
execute if items entity @s weapon.mainhand golden_sword[custom_data~{CLEAVER:true}] run return run scoreboard players add @s base_weapon_damage 40
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{END_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 35
execute if items entity @s weapon.mainhand golden_sword[custom_data~{FANCY_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 20
execute if items entity @s weapon.mainhand iron_sword[custom_data~{FLAMING_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 50
execute if items entity @s weapon.mainhand iron_sword[custom_data~{HUNTER_KNIFE:true}] run return run scoreboard players add @s base_weapon_damage 50
execute if score @s combat matches 4.. if items entity @s weapon.mainhand iron_axe[custom_data~{MERCENARY_AXE:true}] run return run scoreboard players add @s base_weapon_damage 70
execute if items entity @s weapon.mainhand prismarine_shard[custom_data~{PRISMARINE_BLADE:true}] run return run scoreboard players add @s base_weapon_damage 50
execute if items entity @s weapon.mainhand iron_axe[custom_data~{RAIDER_AXE:true}] run return run scoreboard players add @s base_weapon_damage 80
execute if items entity @s weapon.mainhand iron_axe[custom_data~{RAIDER_AXE:true}] run return run scoreboard players operation @s base_weapon_damage += @s raider_kills
execute if items entity @s weapon.mainhand iron_sword[custom_data~{SPIDER_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 30
execute if items entity @s weapon.mainhand wooden_sword[custom_data~{SQUID_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 1
execute if items entity @s weapon.mainhand iron_sword[custom_data~{SQUIRE_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 50
execute if items entity @s weapon.mainhand wooden_sword[custom_data~{TACTICIAN_SWORD:true}] run return run scoreboard players operation @s base_weapon_damage += @s tactician_bonus
execute if items entity @s weapon.mainhand iron_sword[custom_data~{UNDEAD_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 30
execute if items entity @s weapon.mainhand iron_sword[custom_data~{GOLEM_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 80
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{ASPECT_OF_THE_DRAGONS:true}] run return run scoreboard players add @s base_weapon_damage 225
execute if items entity @s weapon.mainhand iron_sword[custom_data~{BLADE_OF_THE_VOLCANO:true}] run return run scoreboard players add @s base_weapon_damage 220
execute if items entity @s weapon.mainhand diamond_sword[custom_data~{VOID_SWORD:true}] run return run scoreboard players add @s base_weapon_damage 125



### armor
# empty for now