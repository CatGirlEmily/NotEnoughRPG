execute as @e[type=!#main:player_threat,type=!skeleton] run attribute @s minecraft:attack_damage base set 0.05
execute as @e[type=#minecraft:arrows] run data modify entity @s damage set value 0.1d