### attack speed
attribute @s attack_speed base set 50

### mana
# because this runs as @a, mana_regen is placed in tick.mcfunction
execute unless score @s mana matches 0.. run scoreboard players set @s mana 100
execute unless score @s max_mana matches 0.. run scoreboard players set @s max_mana 100

execute if score @s mana_usage matches 1.. run scoreboard players add @s mana_usage_time 1
execute if score @s mana_usage_time matches 40.. run scoreboard players set @s mana_usage 0
execute if score @s mana_usage_time matches 40.. run scoreboard players set @s mana_usage_time 0


execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math = @s max_mana
execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math /= 50 int
execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s mana += @s max_mana_math
execute if score %mana_regen time matches 20.. if score @s mana > @s max_mana run scoreboard players operation @s mana = @s max_mana
execute if score %mana_regen time matches 20.. run scoreboard players set %mana_regen time 0

### hp
effect give @s minecraft:saturation infinite 10 true
execute if score @s hp matches ..0 run function main:player/death
function main:player/hp_regen
execute if score @s hp > @s max_hp run scoreboard players operation @s hp = @s max_hp

scoreboard players operation %real_hearts temp = @s max_hp
scoreboard players operation %real_hearts temp /= 5 int
execute if score %real_hearts temp matches 40.. run scoreboard players set %real_hearts temp 40
execute store result storage minecraft:health mha int 1 run scoreboard players get %real_hearts temp
function main:player/real_hearts with storage minecraft:health


### items
execute run function main:player/inventory

### left hand
execute if items entity @s weapon.offhand * run function main:player/find_air
execute if items entity @s weapon.offhand * run function main:player/replace_lefthand with storage minecraft:inventory lefthand
execute if score @s SILLY_countlefthand matches 1.. if score @s SILLY_lefthandtimer matches 40.. run scoreboard players remove @s SILLY_countlefthand 1
execute if score @s SILLY_lefthandtimer matches 40.. run scoreboard players set @s SILLY_lefthandtimer 0

# coords
execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]

### skills
scoreboard players add @s combat 0
scoreboard players add @s mining 0
function main:skill/combat
function main:skill/mining

### teams
function main:misc/teams

### levels
scoreboard players add @s lvl 0

### sidebar
function main:player/sidebar

### damage :sob:
execute if score @s damage_trigger matches 1.. run function main:misc/damage_calc

execute as @e[tag=damage_splash] run scoreboard players add @s time 1
execute as @e[tag=damage_splash] if score @s time matches 30.. run tag @s add damage_kill

execute as @e[tag=damage_kill] run scoreboard players reset @s time
execute as @e[tag=damage_kill] run kill @s

# and now PLAYER damage trigger
function main:player/def_calc
execute if score @s player_damage_trigger1 matches 1 run function main:player/taken_damage
execute if score @s player_damage_trigger2 matches 1 run function main:player/taken_damage
execute if score @s player_damage_trigger3 matches 1 run function main:player/taken_damage
execute if score @s player_damage_trigger1 matches 2.. run scoreboard players set @s player_damage_trigger1 0
execute if score @s player_damage_trigger2 matches 2.. run scoreboard players set @s player_damage_trigger2 0
execute if score @s player_damage_trigger3 matches 2.. run scoreboard players set @s player_damage_trigger3 0

function main:player/fall_damage

# making visual hearts equal to % of maxhp
function main:player/real_hearts_match

### actionbar
execute run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"color":"green","score":{"name":"@s","objective":"def"}},{"color":"green","text":"❈ Defense    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s combat_xp_new matches 1.. run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤    "},{"score":{"name":"","objective":""}},{"color":"dark_aqua","text":"+"},{"color":"dark_aqua","score":{"name":"@s","objective":"combat_xp_new"}},{"color":"dark_aqua","text":" Combat ("},{"color":"dark_aqua","italic":false,"score":{"name":"@s","objective":"combat_xp"}},{"color":"dark_aqua","text":"/"},{"color":"dark_aqua","score":{"name":"@s","objective":"combat_xp_need"}},{"color":"dark_aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mining_xp_new matches 1.. run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤    "},{"score":{"name":"","objective":""}},{"color":"dark_aqua","text":"+"},{"color":"dark_aqua","score":{"name":"@s","objective":"mining_xp_new"}},{"color":"dark_aqua","text":" Mining ("},{"color":"dark_aqua","italic":false,"score":{"name":"@s","objective":"mining_xp"}},{"color":"dark_aqua","text":"/"},{"color":"dark_aqua","score":{"name":"@s","objective":"mining_xp_need"}},{"color":"dark_aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 1 run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Speed Boost"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 2 run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Instant Transmission"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
