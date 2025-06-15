execute as @a if score @s vertical_motion matches 1.. at @s run ride @s mount @e[type=area_effect_cloud,tag=resetmotion,sort=nearest,limit=1]
execute as @a if score @s vertical_motion matches 1.. run scoreboard players remove @s vertical_motion 1
execute as @a if score @s vertical_motion matches 0 at @s run ride @s dismount
execute as @a if score @s vertical_motion matches 0 at @s run tp @s ~ ~-0.6 ~
execute as @a if score @s vertical_motion matches 0 at @s run kill @e[tag=resetmotion,sort=nearest,limit=1]
execute as @a if score @s vertical_motion matches 0 run scoreboard players set @s vertical_motion -1