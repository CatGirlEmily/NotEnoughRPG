effect clear @a night_vision
scoreboard players set %cd_boots damage_math 0
scoreboard players set %cd_legs damage_math 0
scoreboard players set %cd_chest damage_math 0
scoreboard players set %cd_helmet damage_math 0
scoreboard players set %cr_boots damage_math 0
scoreboard players set %cr_legs damage_math 0
scoreboard players set %cr_chest damage_math 0
scoreboard players set %cr_helmet damage_math 0
scoreboard players set %strength_boots damage_math 0
scoreboard players set %strength_legs damage_math 0
scoreboard players set %strength_chest damage_math 0
scoreboard players set %strength_helmet damage_math 0

# def is already set to 0 in main:tick

execute as @a run function main:item/armor/leather
execute as @a run function main:item/armor/golden
execute as @a run function main:item/armor/chainmail
execute as @a run function main:item/armor/iron
execute as @a run function main:item/armor/diamond
execute as @a run function main:item/armor/netherite
execute as @a run function main:item/armor/speedster
execute as @a run function main:item/armor/mushroom
execute as @a run function main:item/armor/pumpkin
execute as @a run function main:item/armor/leaflet

execute as @a[scores={leaflet_heal=20..}] run scoreboard players set @s leaflet_heal 0