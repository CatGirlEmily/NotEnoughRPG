scoreboard players set %timer mining_speed 0
scoreboard players set @s mining_speed 100

# sources !
scoreboard players operation @s mining_speed += @s mining

### armor
execute if items entity @s armor.* leather_helmet[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 15
execute if items entity @s armor.* leather_chestplate[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 15
execute if items entity @s armor.* leather_leggings[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 15
execute if items entity @s armor.* leather_boots[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 15
execute if items entity @s armor.head *[custom_data~{prospecting:true}] if items entity @s armor.chest *[custom_data~{prospecting:true}] if items entity @s armor.legs *[custom_data~{prospecting:true}] if items entity @s armor.feet *[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 40

# miner armor
execute if items entity @s armor.* diamond_helmet[custom_data~{miner:true}] run scoreboard players add @s mining_speed 10
execute if items entity @s armor.* diamond_chestplate[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 10
execute if items entity @s armor.* diamond_leggings[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 10
execute if items entity @s armor.* diamond_boots[custom_data~{prospecting:true}] run scoreboard players add @s mining_speed 10


# przechowuje wartosc w postaci np. 140, jako 140%, potem ustawiam attribute na 1.40 uzywajac dzielenia i modulo
scoreboard players operation %mining_speed1 temp = @s mining_speed
scoreboard players operation %mining_speed1 temp /= 100 int
scoreboard players operation %mining_speed2 temp = @s mining
scoreboard players operation %mining_speed2 temp %= 100 int

execute store result storage minecraft:stats mining.speed1 int 1 run scoreboard players get %mining_speed1 temp
execute store result storage minecraft:stats mining.speed2 int 1 run scoreboard players get %mining_speed2 temp

function main:player/set_miningspeed_macro with storage minecraft:stats mining