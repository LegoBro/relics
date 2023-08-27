## Execute as player, at nearest villager
tag @e[type=villager,tag=display,limit=1,sort=nearest] add talk
execute if entity @e[type=villager,tag=talk,tag=stephen] run function main:lobby/villager/stephen
execute if entity @e[type=villager,tag=talk,tag=LegoBro] run function main:lobby/villager/legobro
execute if entity @e[type=villager,tag=talk,tag=gem] run function main:lobby/villager/gem
execute if entity @e[type=villager,tag=talk,tag=think] run function main:lobby/villager/think
execute if entity @e[type=villager,tag=talk,tag=j] run function main:lobby/villager/j
execute if entity @e[type=villager,tag=talk,tag=redstone] run function main:lobby/villager/redstone
execute if entity @e[type=villager,tag=talk,tag=coffee] run function main:lobby/villager/coffee

tag @e[type=villager,tag=display] remove talk
scoreboard players reset @s talkToVillager