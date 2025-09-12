attribute @s minecraft:armor modifier remove minecraft:armor.boots
attribute @s minecraft:armor modifier remove minecraft:armor.leggings
attribute @s minecraft:armor modifier remove minecraft:armor.chestplate
attribute @s minecraft:armor modifier remove minecraft:armor.helmet
attribute @s minecraft:armor_toughness modifier remove minecraft:armor.boots
attribute @s minecraft:armor_toughness modifier remove minecraft:armor.leggings
attribute @s minecraft:armor_toughness modifier remove minecraft:armor.chestplate
attribute @s minecraft:armor_toughness modifier remove minecraft:armor.helmet


scoreboard players set %prot1 player_damage_math 0
scoreboard players set %prot2 player_damage_math 0
scoreboard players set %prot3 player_damage_math 0
scoreboard players set %prot4 player_damage_math 0
scoreboard players set %protsum player_damage_math 0

execute if data entity @s equipment.feet.components."minecraft:enchantments"."minecraft:protection" store result score %prot1 player_damage_math run data get entity @s equipment.feet.components."minecraft:enchantments"."minecraft:protection"
execute if data entity @s equipment.legs.components."minecraft:enchantments"."minecraft:protection" store result score %prot2 player_damage_math run data get entity @s equipment.legs.components."minecraft:enchantments"."minecraft:protection"
execute if data entity @s equipment.chest.components."minecraft:enchantments"."minecraft:protection" store result score %prot3 player_damage_math run data get entity @s equipment.chest.components."minecraft:enchantments"."minecraft:protection"
execute if data entity @s equipment.head.components."minecraft:enchantments"."minecraft:protection" store result score %prot4 player_damage_math run data get entity @s equipment.head.components."minecraft:enchantments"."minecraft:protection"

### VANILLA ARMOR
execute if items entity @s armor.* leather_boots[custom_data~{leather_boots:true}] run scoreboard players add @s def 5
execute if items entity @s armor.* leather_leggings[custom_data~{leather_leggings:true}] run scoreboard players add @s def 10
execute if items entity @s armor.* leather_chestplate[custom_data~{leather_chestplate:true}] run scoreboard players add @s def 15
execute if items entity @s armor.* leather_helmet[custom_data~{leather_helmet:true}] run scoreboard players add @s def 5

execute if items entity @s armor.* golden_boots[custom_data~{golden_boots:true}] run scoreboard players add @s def 5
execute if items entity @s armor.* golden_leggings[custom_data~{golden_leggings:true}] run scoreboard players add @s def 15
execute if items entity @s armor.* golden_chestplate[custom_data~{golden_chestplate:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* golden_helmet[custom_data~{golden_helmet:true}] run scoreboard players add @s def 5

execute if items entity @s armor.* iron_boots[custom_data~{iron_boots:true}] run scoreboard players add @s def 10
execute if items entity @s armor.* iron_leggings[custom_data~{iron_leggings:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* iron_chestplate[custom_data~{iron_chestplate:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* iron_helmet[custom_data~{iron_helmet:true}] run scoreboard players add @s def 12

execute if items entity @s armor.* chainmail_boots[custom_data~{chainmail_boots:true}] run scoreboard players add @s def 7
execute if items entity @s armor.* chainmail_leggings[custom_data~{chainmail_leggings:true}] run scoreboard players add @s def 20
execute if items entity @s armor.* chainmail_chestplate[custom_data~{chainmail_chestplate:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* chainmail_helmet[custom_data~{chainmail_helmet:true}] run scoreboard players add @s def 12

execute if items entity @s armor.* diamond_boots[custom_data~{diamond_boots:true}] run scoreboard players add @s def 15
execute if items entity @s armor.* diamond_leggings[custom_data~{diamond_leggings:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* diamond_chestplate[custom_data~{diamond_chestplate:true}] run scoreboard players add @s def 40
execute if items entity @s armor.* diamond_helmet[custom_data~{diamond_helmet:true}] run scoreboard players add @s def 15

execute if items entity @s armor.* netherite_helmet[custom_data~{netherite_helmet:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* netherite_chestplate[custom_data~{netherite_chestplate:true}] run scoreboard players add @s def 50
execute if items entity @s armor.* netherite_leggings[custom_data~{netherite_leggings:true}] run scoreboard players add @s def 40
execute if items entity @s armor.* netherite_boots[custom_data~{netherite_boots:true}] run scoreboard players add @s def 25

### CUSTOM ARMOR
execute if items entity @s armor.* leather_helmet[custom_data~{speedster:true}] run scoreboard players add @s def 70
execute if items entity @s armor.* leather_chestplate[custom_data~{speedster:true}] run scoreboard players add @s def 120
execute if items entity @s armor.* leather_leggings[custom_data~{speedster:true}] run scoreboard players add @s def 95
execute if items entity @s armor.* leather_boots[custom_data~{speedster:true}] run scoreboard players add @s def 65

execute if items entity @s armor.* leather_helmet[custom_data~{pumpkin:true}] run scoreboard players add @s def 10
execute if items entity @s armor.* leather_chestplate[custom_data~{pumpkin:true}] run scoreboard players add @s def 10
execute if items entity @s armor.* leather_leggings[custom_data~{pumpkin:true}] run scoreboard players add @s def 10
execute if items entity @s armor.* leather_boots[custom_data~{pumpkin:true}] run scoreboard players add @s def 10

execute if items entity @s armor.* diamond_helmet[custom_data~{rosseta:true}] run scoreboard players add @s def 20
execute if items entity @s armor.* diamond_chestplate[custom_data~{rosseta:true}] run scoreboard players add @s def 40
execute if items entity @s armor.* diamond_leggings[custom_data~{rosseta:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* diamond_boots[custom_data~{rosseta:true}] run scoreboard players add @s def 20

execute if items entity @s armor.* leather_helmet[custom_data~{celeste:true}] run scoreboard players add @s def 10
execute if items entity @s armor.* leather_chestplate[custom_data~{celeste:true}] run scoreboard players add @s def 20
execute if items entity @s armor.* leather_leggings[custom_data~{celeste:true}] run scoreboard players add @s def 15
execute if items entity @s armor.* leather_boots[custom_data~{celeste:true}] run scoreboard players add @s def 5

execute if items entity @s armor.* golden_helmet[custom_data~{starlight:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* leather_chestplate[custom_data~{starlight:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* golden_leggings[custom_data~{starlight:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* leather_boots[custom_data~{starlight:true}] run scoreboard players add @s def 30

execute if items entity @s armor.* chainmail_helmet[custom_data~{squire:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* iron_chestplate[custom_data~{squire:true}] run scoreboard players add @s def 40
execute if items entity @s armor.* chainmail_leggings[custom_data~{squire:true}] run scoreboard players add @s def 30
execute if items entity @s armor.* leather_boots[custom_data~{squire:true}] run scoreboard players add @s def 20

execute if items entity @s armor.* leather_helmet[custom_data~{prospecting:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* leather_chestplate[custom_data~{prospecting:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* leather_leggings[custom_data~{prospecting:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* leather_boots[custom_data~{prospecting:true}] run scoreboard players add @s def 25

execute if items entity @s armor.* diamond_helmet[custom_data~{miner:true}] run scoreboard players add @s def 15
execute if items entity @s armor.* diamond_chestplate[custom_data~{miner:true}] run scoreboard players add @s def 15
execute if items entity @s armor.* diamond_leggings[custom_data~{miner:true}] run scoreboard players add @s def 15
execute if items entity @s armor.* diamond_boots[custom_data~{miner:true}] run scoreboard players add @s def 15

execute if items entity @s armor.* diamond_boots[custom_data~{hardened_diamond:true}] run scoreboard players add @s def 55
execute if items entity @s armor.* diamond_leggings[custom_data~{hardened_diamond:true}] run scoreboard players add @s def 95
execute if items entity @s armor.* diamond_chestplate[custom_data~{hardened_diamond:true}] run scoreboard players add @s def 120
execute if items entity @s armor.* diamond_helmet[custom_data~{hardened_diamond:true}] run scoreboard players add @s def 60

execute if items entity @s armor.* chainmail_boots[custom_data~{ender:true}] run scoreboard players add @s def 25
execute if items entity @s armor.* chainmail_leggings[custom_data~{ender:true}] run scoreboard players add @s def 50
execute if items entity @s armor.* chainmail_chestplate[custom_data~{ender:true}] run scoreboard players add @s def 60
execute if items entity @s armor.* player_head[custom_data~{ender:true}] run scoreboard players add @s def 35


# swords
execute if items entity @s weapon.mainhand iron_sword[custom_data~{GOLEM_SWORD:true}] run scoreboard players add @s def 25



### any doubles around here???
execute if items entity @s[tag=double_helmet] armor.* diamond_helmet[custom_data~{miner:true}] run scoreboard players add @s def 15
execute if items entity @s[tag=double_chestplate] armor.* diamond_chestplate[custom_data~{miner:true}] run scoreboard players add @s def 15
execute if items entity @s[tag=double_leggings] armor.* diamond_leggings[custom_data~{miner:true}] run scoreboard players add @s def 15
execute if items entity @s[tag=double_boots] armor.* diamond_boots[custom_data~{miner:true}] run scoreboard players add @s def 15

execute if items entity @s[tag=double_helmet] armor.* player_head[custom_data~{ender:true}] run scoreboard players add @s def 15
execute if items entity @s[tag=double_chestplate] armor.* chainmail_chestplate[custom_data~{ender:true}] run scoreboard players add @s def 15
execute if items entity @s[tag=double_leggings] armor.* chainmail_leggings[custom_data~{ender:true}] run scoreboard players add @s def 15
execute if items entity @s[tag=double_boots] armor.* chainmail_boots[custom_data~{ender:true}] run scoreboard players add @s def 15



# yes, enchants
execute if entity @s[tag=double_helmet] run scoreboard players operation %protsum player_damage_math += %prot4 player_damage_math
execute if entity @s[tag=double_chestplate] run scoreboard players operation %protsum player_damage_math += %prot3 player_damage_math
execute if entity @s[tag=double_leggings] run scoreboard players operation %protsum player_damage_math += %prot2 player_damage_math
execute if entity @s[tag=double_boots] run scoreboard players operation %protsum player_damage_math += %prot1 player_damage_math


### protectionnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
scoreboard players operation %protsum player_damage_math += %prot1 player_damage_math
scoreboard players operation %protsum player_damage_math += %prot2 player_damage_math
scoreboard players operation %protsum player_damage_math += %prot3 player_damage_math
scoreboard players operation %protsum player_damage_math += %prot4 player_damage_math
scoreboard players operation %protsum player_damage_math *= 3 int
scoreboard players operation @s def += %protsum player_damage_math


scoreboard players operation %mining temp = @s mining
scoreboard players operation %mining temp *= 2 int
scoreboard players operation @s def += %mining temp