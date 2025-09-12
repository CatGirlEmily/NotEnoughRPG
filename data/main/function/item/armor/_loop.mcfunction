execute if items entity @s armor.* *[custom_data~{mushroom:true}] run effect clear @s night_vision

function main:player/stats/bonus_hp
function main:item/armor/leather
function main:item/armor/golden
function main:item/armor/chainmail
function main:item/armor/iron
function main:item/armor/diamond
function main:item/armor/netherite
function main:item/armor/speedster
function main:item/armor/mushroom
function main:item/armor/pumpkin
function main:item/armor/leaflet
function main:item/armor/celeste
function main:item/armor/starlight
function main:item/armor/squire
function main:item/armor/miner
execute at @s run function main:item/armor/ender

execute if score @s leaflet_heal matches 20.. run scoreboard players set @s leaflet_heal 0