# wisdom
#scoreboard players set @s combat_wisdom 100
execute unless score @s mana_regen matches 1.. run scoreboard players set @s mana_regen 100

### attack speed
#attribute @s attack_speed base set 50
# due to miko's preferences, for now its disabled. ill try to just double normal minecraft ATSP when the stat reaches 100%, maybe uncap it also

### mana
# because this runs as @a, mana_regen is placed in tick.mcfunction
execute unless score @s mana matches 0.. run scoreboard players set @s mana 100
execute unless score @s max_mana matches 0.. run scoreboard players set @s max_mana 100

execute if score @s mana_usage matches 1.. run scoreboard players add @s mana_usage_time 1
execute if score @s mana_usage_time matches 40.. run scoreboard players set @s mana_usage 0
execute if score @s mana_usage_time matches 40.. run scoreboard players set @s mana_usage_time 0


execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math = @s max_mana
execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math /= 50 int
execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math *= @s mana_regen
execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math /= 100 int
execute if score %mana_regen time matches 20.. if score @s mana < @s max_mana run scoreboard players operation @s mana += @s max_mana_math
execute if score %mana_regen time matches 20.. if score @s mana > @s max_mana run scoreboard players operation @s mana = @s max_mana

### hp
effect give @s resistance infinite 255 true
effect give @s minecraft:saturation infinite 10 true
execute if score %hp_regen time matches 40.. run function main:player/passive_regen
execute if score @s hp > @s max_hp run scoreboard players operation @s hp = @s max_hp

scoreboard players operation %real_hearts temp = @s max_hp
scoreboard players operation %real_hearts temp /= 5 int
execute if score %real_hearts temp matches 40.. run scoreboard players set %real_hearts temp 40
execute store result storage minecraft:health mha int 1 run scoreboard players get %real_hearts temp
function main:player/real_hearts with storage minecraft:health
execute if score @s hp matches ..0 run function main:player/death


### items
execute if score @s bow_used matches 1.. run function main:player/bow_copy_stats
execute run function main:player/inventory_manage/main

### left hand
execute if items entity @s weapon.offhand * run function main:player/inventory_manage/find_air
execute if items entity @s weapon.offhand * run function main:player/inventory_manage/replace_lefthand with storage minecraft:inventory lefthand
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
execute if score %timer mining_speed matches 10.. run function main:player/stats/mining_speed

### teams
execute if entity @s[team=] run function main:misc/teams

### levels
scoreboard players add @s lvl 0

### sidebar
function main:player/sidebar

execute as @e[tag=damage_splash,type=armor_stand] run scoreboard players add @s time 1
execute as @e[tag=damage_splash,type=armor_stand] if score @s time matches 40.. run tag @s add damage_kill

execute as @e[tag=damage_kill,type=armor_stand] run scoreboard players reset @s time
execute as @e[tag=damage_kill,type=armor_stand] run kill @s

# and now PLAYER damage trigger
function main:player/stats/strength_calc
function main:player/stats/def_calc
function main:player/stats/cr_calc
function main:player/stats/cd_calc
function main:player/fall_damage
# function main:player/stats/base_dmg_calc -> moved to damage_calc.mcfunction for performance reasons
# same with multipliers btw

# making visual hearts equal to % of maxhp
function main:player/real_hearts_match

### actionbar
## for mana
# 1 - rogue
# 2 - aote
# 3 - golem
# 4 - celeste wand
# 5 - starlight wand (todo) (120) (Starlight)
# 6 - aotd
execute run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"color":"green","score":{"name":"@s","objective":"def"}},{"color":"green","text":"❈ Defense    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s combat_xp_new matches 1.. run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤    "},{"score":{"name":"","objective":""}},{"color":"dark_aqua","text":"+"},{"color":"dark_aqua","score":{"name":"@s","objective":"combat_xp_new"}},{"color":"dark_aqua","text":" Combat ("},{"color":"dark_aqua","italic":false,"score":{"name":"@s","objective":"combat_xp"}},{"color":"dark_aqua","text":"/"},{"color":"dark_aqua","score":{"name":"@s","objective":"combat_xp_need"}},{"color":"dark_aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mining_xp_new matches 1.. run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤    "},{"score":{"name":"","objective":""}},{"color":"dark_aqua","text":"+"},{"color":"dark_aqua","score":{"name":"@s","objective":"mining_xp_new"}},{"color":"dark_aqua","text":" Mining ("},{"color":"dark_aqua","italic":false,"score":{"name":"@s","objective":"mining_xp"}},{"color":"dark_aqua","text":"/"},{"color":"dark_aqua","score":{"name":"@s","objective":"mining_xp_need"}},{"color":"dark_aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 1 run return run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Speed Boost"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 2 run return run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Instant Transmission"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 3 run return run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Iron Punch"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 4 run return run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Lightning Strike"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 5 run return run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Starlight"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 6 run return run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Dragon Rage"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]


# get rid of tags
tag @s remove double_helmet
tag @s remove double_chestplate
tag @s remove double_leggings
tag @s remove double_boots