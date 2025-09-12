execute as @e[type=!#cw_hp_disp:no_hp,tag=!hashp] run function main:mob/add_hashp
scoreboard players add %regeneration mob_hp 1

execute if score %regeneration mob_hp matches 100.. as @e[type=!#cw_hp_disp:no_hp,tag=hashp] run function main:mob/hp
function main:mob/on_spawn
function main:mob/resistance