execute as @e[type=!#cw_hp_disp:no_hp,tag=!hashp] store result score @s mob_max_hp run random value 1..5000
execute as @e[type=!#cw_hp_disp:no_hp,tag=!hashp] run scoreboard players operation @s mob_hp = @s mob_max_hp
execute as @e[type=!#cw_hp_disp:no_hp,tag=!hashp] run tag @s add hashp

scoreboard players add %regeneration mob_hp 1
execute as @e[type=!#cw_hp_disp:no_hp,tag=hashp,tag=!noregen] if score %regeneration mob_hp matches 100.. run scoreboard players operation @s mob_regeneration = @s mob_max_hp
execute as @e[type=!#cw_hp_disp:no_hp,tag=hashp,tag=!noregen] if score %regeneration mob_hp matches 100.. run scoreboard players operation @s mob_regeneration /= 20 int
execute as @e[type=!#cw_hp_disp:no_hp,tag=hashp,tag=!noregen] if score %regeneration mob_hp matches 100.. run scoreboard players operation @s mob_hp += @s mob_regeneration
execute as @e[type=!#cw_hp_disp:no_hp,tag=hashp,tag=!noregen] if score %regeneration mob_hp matches 100.. run scoreboard players set %regeneration mob_hp 0

execute as @e[type=!#cw_hp_disp:no_hp,tag=hashp] if score @s mob_hp > @s mob_max_hp run scoreboard players operation @s mob_hp = @s mob_max_hp

# for mob death, see main:misc/damage_calc

execute as @e[type=!#cw_hp_disp:no_hp,tag=hashp] if score @s mob_hp = @s mob_max_hp run data modify entity @s CustomNameVisible set value 0b