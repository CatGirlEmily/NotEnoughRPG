scoreboard players set %combatxp temp 1


scoreboard players operation %combatxp temp *= 100 combat_wisdom
scoreboard players operation %combatxp temp /= 100 int
scoreboard players operation @s combat_xp += %combatxp temp
function main:skill/combat/grant_xp/_removeall
# as remove all advancments related to mob kill