# obliczamy nowe HP w procentach, zachowując procent starego HP
execute as @a run scoreboard players operation @s hp *= @s max_hp
execute as @a run scoreboard players operation @s hp /= @s old_max_hp
# aktualizacja old_max_hp, żeby była zgodna z nowym max_hp
execute as @a run scoreboard players operation @s old_max_hp = @s max_hp
