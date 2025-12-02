## Starts up the game

function main:board/delete
function main:board/load
scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] turnCost 4

execute as @a[tag=game.start,limit=2] run function main:board/player_setup
tag @a remove game.start
tag @a remove board.load.player
