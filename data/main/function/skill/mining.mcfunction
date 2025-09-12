# new xp
scoreboard players operation @s mining_xp_dupe = @s mining_xp
execute if score @s mining_xp_old < @s mining_xp run scoreboard players operation @s mining_xp_dupe -= @s mining_xp_old
execute if score @s mining_xp_old < @s mining_xp run scoreboard players operation @s mining_xp_new = @s mining_xp_dupe
execute if score @s mining_xp_old < @s mining_xp run scoreboard players set @s mining_xp_new_time 0
scoreboard players operation @s mining_xp_old = @s mining_xp

execute if score @s mining_xp_new matches 1.. run scoreboard players add @s mining_xp_new_time 1
execute if score @s mining_xp_new_time matches 40.. run scoreboard players set @s mining_xp_new 0
execute if score @s mining_xp_new_time matches 40.. run scoreboard players set @s mining_xp_new_time 0

# xp left
execute if score @s mining matches 0 run scoreboard players set @s mining_xp_need 50
execute if score @s mining matches 1 run scoreboard players set @s mining_xp_need 125
execute if score @s mining matches 2 run scoreboard players set @s mining_xp_need 200
execute if score @s mining matches 3 run scoreboard players set @s mining_xp_need 300
execute if score @s mining matches 4 run scoreboard players set @s mining_xp_need 500
execute if score @s mining matches 5 run scoreboard players set @s mining_xp_need 750
execute if score @s mining matches 6 run scoreboard players set @s mining_xp_need 1000
execute if score @s mining matches 7 run scoreboard players set @s mining_xp_need 1500
execute if score @s mining matches 8 run scoreboard players set @s mining_xp_need 2000
execute if score @s mining matches 9 run scoreboard players set @s mining_xp_need 3500
execute if score @s mining matches 10 run scoreboard players set @s mining_xp_need 5000
execute if score @s mining matches 11 run scoreboard players set @s mining_xp_need 7500
execute if score @s mining matches 12 run scoreboard players set @s mining_xp_need 10000
execute if score @s mining matches 13 run scoreboard players set @s mining_xp_need 15000
execute if score @s mining matches 14 run scoreboard players set @s mining_xp_need 20000
execute if score @s mining matches 15 run scoreboard players set @s mining_xp_need 30000
execute if score @s mining matches 16 run scoreboard players set @s mining_xp_need 50000
execute if score @s mining matches 17 run scoreboard players set @s mining_xp_need 75000
execute if score @s mining matches 18 run scoreboard players set @s mining_xp_need 100000
execute if score @s mining matches 19 run scoreboard players set @s mining_xp_need 200000
execute if score @s mining matches 20 run scoreboard players set @s mining_xp_need 300000
execute if score @s mining matches 21 run scoreboard players set @s mining_xp_need 400000
execute if score @s mining matches 22 run scoreboard players set @s mining_xp_need 500000
execute if score @s mining matches 23 run scoreboard players set @s mining_xp_need 600000
execute if score @s mining matches 24 run scoreboard players set @s mining_xp_need 700000
execute if score @s mining matches 25 run scoreboard players set @s mining_xp_need 800000

# mining lvlup
execute if score @s mining_xp >= @s mining_xp_need run tag @s add mining_lvlup

execute if entity @s[tag=mining_lvlup] run function main:skill/mining/_levelup_message
execute if entity @s[tag=mining_lvlup] run scoreboard players set @s mining_lvl_sound 0
execute if entity @s[tag=mining_lvlup] run scoreboard players add @s mining 1
execute if entity @s[tag=mining_lvlup] run scoreboard players operation @s mining_xp -= @s mining_xp_need
execute if entity @s[tag=mining_lvlup] run tag @s remove mining_lvlup

execute if score @s mining_lvl_sound matches 1 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 0.793701
execute if score @s mining_lvl_sound matches 3 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score @s mining_lvl_sound matches 5 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1.189207
execute if score @s mining_lvl_sound matches 7 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1.587401


# respective levels
scoreboard objectives add zzz_mined.stone minecraft.mined:minecraft.stone
scoreboard objectives add zzz_mined.granite minecraft.mined:minecraft.granite
scoreboard objectives add zzz_mined.diorite minecraft.mined:minecraft.diorite
scoreboard objectives add zzz_mined.andesite minecraft.mined:minecraft.andesite
scoreboard objectives add zzz_mined.tuff minecraft.mined:minecraft.tuff
scoreboard objectives add zzz_mined.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add zzz_mined.dirt minecraft.mined:minecraft.dirt
scoreboard objectives add zzz_mined.grass_block minecraft.mined:minecraft.grass_block
scoreboard objectives add zzz_mined.sand minecraft.mined:minecraft.sand
scoreboard objectives add zzz_mined.red_sand minecraft.mined:minecraft.red_sand
scoreboard objectives add zzz_mined.ice minecraft.mined:minecraft.ice
scoreboard objectives add zzz_mined.blue_ice minecraft.mined:minecraft.blue_ice
scoreboard objectives add zzz_mined.snow_block minecraft.mined:minecraft.snow_block
scoreboard objectives add zzz_mined.deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add zzz_mined.netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add zzz_mined.obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add zzz_mined.blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add zzz_mined.basalt minecraft.mined:minecraft.basalt
scoreboard objectives add zzz_mined.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add zzz_mined.deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add zzz_mined.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add zzz_mined.deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add zzz_mined.emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add zzz_mined.deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add zzz_mined.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add zzz_mined.deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add zzz_mined.redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add zzz_mined.deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add zzz_mined.lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add zzz_mined.deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add zzz_mined.nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add zzz_mined.nether_quart_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add zzz_mined.ancient_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add zzz_mined.clay minecraft.mined:minecraft.clay


execute if score @s zzz_mined.stone matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.stone matches 1.. run scoreboard players set @s zzz_mined.stone 0

execute if score @s zzz_mined.granite matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.granite matches 1.. run scoreboard players set @s zzz_mined.granite 0

execute if score @s zzz_mined.diorite matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.diorite matches 1.. run scoreboard players set @s zzz_mined.diorite 0

execute if score @s zzz_mined.andesite matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.andesite matches 1.. run scoreboard players set @s zzz_mined.andesite 0

execute if score @s zzz_mined.tuff matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.tuff matches 1.. run scoreboard players set @s zzz_mined.tuff 0
execute if score @s zzz_mined.cobblestone matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.cobblestone matches 1.. run scoreboard players set @s zzz_mined.cobblestone 0

execute if score @s zzz_mined.dirt matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.dirt matches 1.. run scoreboard players set @s zzz_mined.dirt 0

execute if score @s zzz_mined.grass_block matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.grass_block matches 1.. run scoreboard players set @s zzz_mined.grass_block 0

execute if score @s zzz_mined.sand matches 1.. run scoreboard players add @s mining_xp 3
execute if score @s zzz_mined.sand matches 1.. run scoreboard players set @s zzz_mined.sand 0

execute if score @s zzz_mined.red_sand matches 1.. run scoreboard players add @s mining_xp 6
execute if score @s zzz_mined.red_sand matches 1.. run scoreboard players set @s zzz_mined.red_sand 0

execute if score @s zzz_mined.ice matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.ice matches 1.. run scoreboard players set @s zzz_mined.ice 0

execute if score @s zzz_mined.blue_ice matches 1.. run scoreboard players add @s mining_xp 15
execute if score @s zzz_mined.blue_ice matches 1.. run scoreboard players set @s zzz_mined.blue_ice 0

execute if score @s zzz_mined.snow_block matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.snow_block matches 1.. run scoreboard players set @s zzz_mined.snow_block 0

execute if score @s zzz_mined.deepslate matches 1.. run scoreboard players add @s mining_xp 3
execute if score @s zzz_mined.deepslate matches 1.. run scoreboard players set @s zzz_mined.deepslate 0

execute if score @s zzz_mined.netherrack matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.netherrack matches 1.. run scoreboard players set @s zzz_mined.netherrack 0

execute if score @s zzz_mined.obsidian matches 1.. run scoreboard players add @s mining_xp 25
execute if score @s zzz_mined.obsidian matches 1.. run scoreboard players set @s zzz_mined.obsidian 0

execute if score @s zzz_mined.blackstone matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.blackstone matches 1.. run scoreboard players set @s zzz_mined.blackstone 0

execute if score @s zzz_mined.basalt matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.basalt matches 1.. run scoreboard players set @s zzz_mined.basalt 0

execute if score @s zzz_mined.coal_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.coal_ore matches 1.. run scoreboard players set @s zzz_mined.coal_ore 0

execute if score @s zzz_mined.deepslate_coal_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.deepslate_coal_ore matches 1.. run scoreboard players set @s zzz_mined.deepslate_coal_ore 0

execute if score @s zzz_mined.iron_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.iron_ore matches 1.. run scoreboard players set @s zzz_mined.iron_ore 0

execute if score @s zzz_mined.deepslate_iron_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.deepslate_iron_ore matches 1.. run scoreboard players set @s zzz_mined.deepslate_iron_ore 0

execute if score @s zzz_mined.emerald_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.emerald_ore matches 1.. run scoreboard players set @s zzz_mined.emerald_ore 0

execute if score @s zzz_mined.deepslate_emerald_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.deepslate_emerald_ore matches 1.. run scoreboard players set @s zzz_mined.deepslate_emerald_ore 0

execute if score @s zzz_mined.diamond_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.diamond_ore matches 1.. run scoreboard players set @s zzz_mined.diamond_ore 0

execute if score @s zzz_mined.deepslate_diamond_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.deepslate_diamond_ore matches 1.. run scoreboard players set @s zzz_mined.deepslate_diamond_ore 0

execute if score @s zzz_mined.redstone_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.redstone_ore matches 1.. run scoreboard players set @s zzz_mined.redstone_ore 0

execute if score @s zzz_mined.deepslate_redstone_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.deepslate_redstone_ore matches 1.. run scoreboard players set @s zzz_mined.deepslate_redstone_ore 0

execute if score @s zzz_mined.lapis_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.lapis_ore matches 1.. run scoreboard players set @s zzz_mined.lapis_ore 0

execute if score @s zzz_mined.deepslate_lapis_ore matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.deepslate_lapis_ore matches 1.. run scoreboard players set @s zzz_mined.deepslate_lapis_ore 0

execute if score @s zzz_mined.nether_gold_ore matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.nether_gold_ore matches 1.. run scoreboard players set @s zzz_mined.nether_gold_ore 0

execute if score @s zzz_mined.nether_quart_ore matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s zzz_mined.nether_quart_ore matches 1.. run scoreboard players set @s zzz_mined.nether_quart_ore 0

execute if score @s zzz_mined.ancient_debris matches 1.. run scoreboard players add @s mining_xp 10
execute if score @s zzz_mined.ancient_debris matches 1.. run scoreboard players set @s zzz_mined.ancient_debris 0

execute if score @s zzz_mined.clay matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s zzz_mined.clay matches 1.. run scoreboard players set @s zzz_mined.clay 0
