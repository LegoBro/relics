## Starts up the game

function main:board/delete
function main:board/load
tag @e[type=armor_stand,tag=id,tag=board.center,limit=1] add tutorial
scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] turnCost 4
scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] tut.spot 0
scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] tut.counter 10

execute if score #skip_tut var matches 1 run scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] tut.spot 53

scoreboard players set @s turnTimer 1
execute as @s run function main:board/tutorial/player_setup
tag @a remove board.load.player
