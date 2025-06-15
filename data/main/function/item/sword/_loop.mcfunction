# scoreboards
scoreboard players set @a cr_weapon_bonus 0
scoreboard players set @a cd_weapon_bonus 0
scoreboard players set @a strength_weapon_bonus 1
scoreboard players set @a strength_weapon_bonus_rl 0
scoreboard players add @a rogue_used 1
scoreboard players add @a aote_used 1
scoreboard players add @a rogue_duration 1
scoreboard players add @a aote_duration 1

# items working
execute as @a if score @s rogue_duration matches 600.. run attribute @s minecraft:movement_speed modifier remove rogue_sword
execute as @a if score @s aote_duration matches 60.. run attribute @s minecraft:movement_speed modifier remove aote

execute as @a run function main:item/sword/wooden
execute as @a run function main:item/sword/stone
execute as @a run function main:item/sword/iron
execute as @a run function main:item/sword/golden
execute as @a run function main:item/sword/diamond
execute as @a run function main:item/sword/netherite
execute as @a run function main:item/sword/fancy
execute as @a run function main:item/sword/cleaver
execute as @a run function main:item/sword/squire
execute as @a run function main:item/sword/end
execute as @a run function main:item/sword/spider
execute as @a run function main:item/sword/undead
execute as @a run function main:item/sword/hunter
execute as @a run function main:item/sword/flaming
execute as @a run function main:item/sword/prismarine
execute as @a run function main:item/sword/mercenary_axe
execute as @a run function main:item/sword/tactician
execute as @a run function main:item/sword/raider

execute as @a if items entity @s weapon.mainhand golden_sword[custom_data~{rogue_sword:true}] run scoreboard players set @s strength_weapon_bonus 20
execute as @a if items entity @s weapon.mainhand diamond_sword[custom_data~{aote:true}] run scoreboard players set @s strength_weapon_bonus 100
execute as @a if items entity @s weapon.mainhand diamond_sword[custom_data~{aote:true}] run scoreboard players set @s strength_weapon_bonus_rl 100