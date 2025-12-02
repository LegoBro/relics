## Ready up
tag @s[team=lobby] add waiting
tag @s[team=waiting] remove waiting
tellraw @s[tag=waiting] {"translate":"lobby.queue"}
tellraw @s[tag=!waiting] {"translate":"lobby.queue.leave"}
team join lobby @s[tag=!waiting]
team join waiting @s[tag=waiting]
tag @s[tag=selected] remove selected

tag @s remove dueling
scoreboard players reset @s duel.timer
scoreboard players reset @s duel.id
tag @s remove duel_invited

playsound minecraft:coin_earn master @s[tag=waiting] ~ ~ ~ 1 0
playsound minecraft:block.fire.extinguish master @s[tag=!waiting] ~ ~ ~ 1 2