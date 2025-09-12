# scoreboards
scoreboard players add @s rogue_used 1
scoreboard players add @s aote_used 1
scoreboard players add @s rogue_duration 1
scoreboard players add @s aote_duration 1

# items working
execute if score @s rogue_duration matches 600.. run attribute @s minecraft:movement_speed modifier remove rogue_sword
execute if score @s aote_duration matches 60.. run attribute @s minecraft:movement_speed modifier remove aote

function main:item/sword/wooden
function main:item/sword/stone
function main:item/sword/iron
function main:item/sword/golden
function main:item/sword/diamond
function main:item/sword/netherite

function main:item/sword/tactician
function main:item/sword/raider