## Loads the deck builder and tps the player to it
clear @s
tag @e[tag=id] remove id

function main:arena/new
execute at @e[type=armor_stand,tag=new,tag=arena.anchor,limit=1] run function main:arena/create/arena/load_structure
