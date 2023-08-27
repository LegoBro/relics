## Loads the tutorial, but skip it
scoreboard players set #skip_tut var 1
clear @s
tag @s remove waiting
tag @s add t.skip
function main:arena/new
execute at @e[type=armor_stand,tag=new,tag=arena.anchor,limit=1] run function main:arena/create/tutorial/load_structure
