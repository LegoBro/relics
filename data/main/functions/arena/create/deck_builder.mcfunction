## Loads the deck builder and tps the player to it
clear @s
tag @s remove waiting
tag @s remove wait
tag @s remove turn
function main:arena/new
execute at @e[type=armor_stand,tag=new,tag=arena.anchor,limit=1] run function main:arena/create/deck_builder/load_structure
