### damage calculation
scoreboard players set @p[tag=using_magic] damage_trigger 1
execute as @p[tag=using_magic] run function main:player/stats/base_ability_dmg
function main:player/stats/magic_additive_multiplier
execute as @p[tag=using_magic] run function main:player/stats/magic_multiplicative_multiplier

# magic cant crit
scoreboard players set %critchance random -2

# im sick of this @p bullshit so moving it in here
execute as @p[tag=using_magic] run function main:player/magic_damage_calc

# apply
tag @s add hurt_calc
damage @s 0.001 generic_kill

scoreboard players operation @s mob_hp -= %temp_main damage_math
function main:misc/damage_indicator/damage_as_mob
execute if score @s mob_hp matches ..0 run damage @s 10000 generic_kill by @p[tag=using_magic]

tag @s remove hurt_calc