$scoreboard players set %biome sidebar_$(number) 11
$execute if score @s y matches ..1 run scoreboard players display name %biome sidebar_$(number) "§7 ⏣ §c$(biome)"
$execute if score @s y matches 0..59 run scoreboard players display name %biome sidebar_$(number) "§7 ⏣ §6$(biome)"
$execute if score @s y matches 60.. run scoreboard players display name %biome sidebar_$(number) "§7 ⏣ §a$(biome)"