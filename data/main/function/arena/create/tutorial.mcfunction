## Loads the deck builder and tps the player to it
scoreboard players set #skip_tut var 0
clear @s
tag @s remove waiting
function main:arena/new
execute at @e[type=armor_stand,tag=new,tag=arena.anchor,limit=1] run function main:arena/create/tutorial/load_structure
