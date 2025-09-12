function main:item/bow/default

execute as @e[type=arrow] if data entity @s {inGround:1b} run kill @s
execute as @e[type=arrow] at @s if block ~ ~ ~ minecraft:water run kill @s