# e
scoreboard players operation %div_hp temp = @s hp
scoreboard players operation %div_hp temp *= 100 int
scoreboard players operation %div_hp temp /= @s max_hp

execute store result score %max_hearts temp run attribute @s minecraft:max_health get
scoreboard players operation %div_hp temp *= %max_hearts temp
scoreboard players operation %div_hp temp /= 100 int

scoreboard players operation %div_hp2 temp = @s real_health
scoreboard players operation %div_hp2 temp -= %div_hp temp

#scoreboard players remove %max_hearts temp 1
execute if score %div_hp2 temp >= @s real_health run scoreboard players operation %div_hp2 temp = @s real_health
execute if score %div_hp2 temp matches 1.. run scoreboard players remove %div_hp2 temp 1

execute if score %div_hp2 temp matches 1.. store result storage minecraft:damage heart.amount int 1 run scoreboard players get %div_hp2 temp
execute if score %div_hp2 temp matches 1.. unless score @s hp matches ..1 run function main:player/damage_macro with storage minecraft:damage heart

execute if score %div_hp2 temp matches ..-1 run effect give @s regeneration infinite 255 true
execute if score %div_hp2 temp matches ..-1 run schedule function main:player/clear_regeneration 2t replace