$execute anchored eyes positioned ^ ^ ^$(d) if block ~ ~1 ~ #main:aotable run return run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["resetmotion"],Duration:10}
$execute anchored eyes positioned ^ ^ ^$(d) if block ~ ~-1 ~ #main:aotable run return run summon area_effect_cloud ~ ~-1 ~ {NoGravity:1b,Tags:["resetmotion"],Duration:10}
scoreboard players remove %aote_no aote_duration 1
function main:misc/aote