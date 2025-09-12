tag @s add hurt_calc
execute on attacker if entity @s[advancements={entity_hit_matching:arrow_hurt=true}] run return run function main:misc/damage_calc_bow

execute on attacker run function main:misc/damage_calc

execute on attacker unless score @s ferocity matches 101.. run return fail
execute on attacker if score @s ferocity matches 200.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 300.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 400.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 500.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 600.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 700.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 800.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 900.. run function main:misc/damage_calc_fero
execute on attacker if score @s ferocity matches 1000.. run function main:misc/damage_calc_fero

execute on attacker run scoreboard players operation %ferocity damage_math = @s ferocity
scoreboard players operation %ferocity damage_math %= 100 int
execute store result score %random_ferocity damage_math run random value 1..99
execute on attacker if score %ferocity damage_math > %random_ferocity damage_math run function main:misc/damage_calc

tag @s remove hurt_calc
# this is executed as entity which got hurt, so we're adding a tag to keep track of it + we're running
# damage calculation as attacker (player in this case)

# it can only be player due to mobs not being able to gain advancments