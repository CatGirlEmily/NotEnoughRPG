tag @s add this
tag @s add new

data modify entity @s CustomNameVisible set value 0b
data remove entity @s CustomName

execute store result score .new cw_hp_disp run scoreboard players get @s mob_hp
execute store result score .new_max cw_hp_disp run scoreboard players get @s mob_max_hp
function cw_hp_disp:get_name
data modify storage cw_hp_disp CustomName set from entity @s CustomName

data modify entity @e[type=text_display,limit=1,tag=cw_hp_disp] text set value [{"color":"#808080","text":"["},{"color":"#FF0000","score":{"name":".new","objective":"cw_hp_disp"}},{"color":"#808080","text":"/"},{"color":"#8b0000","score":{"name":".new_max","objective":"cw_hp_disp"}},{"color":"#808080","text":"] "},{"interpret":true,"nbt":"CustomName","storage":"cw_hp_disp"}]


data modify entity @s CustomName set from entity @e[type=text_display,tag=cw_hp_disp,limit=1] text
execute unless score @s mob_hp = @s mob_max_hp run data modify entity @s CustomNameVisible set value true
tag @s remove this