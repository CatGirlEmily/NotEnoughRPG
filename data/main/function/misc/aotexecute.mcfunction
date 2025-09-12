$execute anchored eyes positioned ^ ^ ^$(d) if block ~ ~1 ~ #main:aotable run return run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"portal"},NoGravity:1b,Radius:1f,Duration:1,Tags:["resetmotion"]}
$execute anchored eyes positioned ^ ^ ^$(d) if block ~ ~-1 ~ #main:aotable run return run summon area_effect_cloud ~ ~-1 ~ {custom_particle:{type:"portal"},NoGravity:1b,Radius:1f,Duration:1,Tags:["resetmotion"]}
scoreboard players remove %aote_no aote_duration 1
function main:misc/aote