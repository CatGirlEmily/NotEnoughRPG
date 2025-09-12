### numbers here are meant to be used as percentage, so everything is multiplied by 100 already
    scoreboard players set @s cr 30
    scoreboard players operation %combat_bonus temp = @s combat
    scoreboard players operation %combat_bonus temp /= 2 int
    scoreboard players operation @s cr += %combat_bonus temp


execute if items entity @s weapon.mainhand wooden_sword[custom_data~{TACTICIAN_SWORD:true}] run scoreboard players add @s cr 20
