execute unless entity @s[tag=noregen] run scoreboard players operation @s mob_regeneration = @s mob_max_hp
execute unless entity @s[tag=noregen] run scoreboard players operation @s mob_regeneration /= 20 int
execute unless entity @s[tag=noregen] run scoreboard players operation @s mob_hp += @s mob_regeneration
execute unless entity @s[tag=noregen] run scoreboard players set %regeneration mob_hp 0

execute if score @s mob_hp > @s mob_max_hp run scoreboard players operation @s mob_hp = @s mob_max_hp

# for mob death, see main:misc/damage_calc

execute if score @s mob_hp = @s mob_max_hp run data modify entity @s CustomNameVisible set value 0b