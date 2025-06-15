tag @s add this
scoreboard players operation .old cw_hp_disp = @s cw_hp_disp
scoreboard players operation .old_max cw_hp_disp = @s cw_hp_max_disp

tag @s add new

data modify entity @s CustomNameVisible set value 0b

execute store result score .new cw_hp_disp run scoreboard players get @s mob_hp
execute store result score .new_max cw_hp_disp run scoreboard players get @s mob_max_hp
execute if score .old cw_hp_disp matches 0 unless data entity @s CustomName run function cw_hp_disp:get_name
data modify storage cw_hp_disp CustomName set from entity @s CustomName

execute if score .old cw_hp_disp matches 1.. run function cw_hp_disp:old

data modify entity @e[type=text_display,tag=cw_hp_disp,limit=1] text set value '["",{"text":"[","color":"#808080"},{"score":{"objective":"cw_hp_disp","name":".new"},"color":"#FF0000"},{"text":"/","color":"#808080"},{"score":{"objective":"cw_hp_disp","name":".new_max"},"color":"#8b0000"},{"text":"] ","color":"#808080"},{"nbt":"CustomName","storage":"cw_hp_disp","interpret":true}]'

scoreboard players operation @s cw_hp_disp = .new cw_hp_disp
scoreboard players operation @s cw_hp_max_disp = .new_max cw_hp_disp
data modify entity @s CustomName set from entity @e[type=text_display,tag=cw_hp_disp,limit=1] text

data modify entity @s CustomNameVisible set value 1b
tag @s remove this