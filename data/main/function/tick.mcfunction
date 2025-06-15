scoreboard players set @a multiplier 100
scoreboard players set @a def_multiplier 100
scoreboard players set @a def 0
scoreboard players set @a max_hp 100
scoreboard players set @a health_regen 100
scoreboard players add @a hp 0

scoreboard players add %mana_regen time 1
scoreboard players add %hp_regen time 1

## loops
function main:item/sword/_loop
function main:item/armor/_loop
function main:mob/_loop
function main:quest/_loop
function main:misc/vertical_motion

### its a loop too, in some way
execute as @a run function main:player

execute store result score %daytime time run time query daytime
scoreboard players add @a quest_active 0
execute as @e[type=item,sort=nearest,limit=1] at @s unless data entity @s Thrower run tp @p[distance=..10]
execute as @e[type=item,sort=nearest,limit=1] at @s unless data entity @s Thrower run data merge entity @s {PickupDelay:0s}
gamerule naturalRegeneration false
gamerule doImmediateRespawn true
gamerule fallDamage false
execute if score %hp_regen time matches 40.. run scoreboard players set %hp_regen time 0

