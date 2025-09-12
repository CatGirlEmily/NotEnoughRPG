ride @s mount @e[type=area_effect_cloud,tag=resetmotion,sort=nearest,limit=1]
ride @s dismount

execute at @s if block ~ ~-0.6 ~ #main:aotable run return run function main:misc/vertical_motion_exec {"d":6}
execute at @s if block ~ ~-0.6 ~ #main:aotable run return run function main:misc/vertical_motion_exec {"d":6}
execute at @s if block ~ ~-0.5 ~ #main:aotable run return run function main:misc/vertical_motion_exec {"d":5}
execute at @s if block ~ ~-0.4 ~ #main:aotable run return run function main:misc/vertical_motion_exec {"d":4}
execute at @s if block ~ ~-0.3 ~ #main:aotable run return run function main:misc/vertical_motion_exec {"d":3}
execute at @s if block ~ ~-0.2 ~ #main:aotable run return run function main:misc/vertical_motion_exec {"d":2}
execute at @s if block ~ ~-0.1 ~ #main:aotable run return run function main:misc/vertical_motion_exec {"d":1}