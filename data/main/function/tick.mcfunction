## Main engine tick
scoreboard players add #GLOBAL world.link 1
execute as @e[tag=!tick.ignore] at @s run function main:entity/tick
execute as @a at @s run function main:player/tick
function main:lobby/waiting

# Coffeee
particle smoke 17.35 201.1 -3.3 0 0 0 0 1 normal

# GLobal bossbar laziness
bossbar set minecraft:not_turn players @a[team=in_game,tag=wait]
bossbar set minecraft:turn players @a[team=in_game,tag=turn]