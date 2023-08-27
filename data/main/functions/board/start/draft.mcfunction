## Starts up the game (begin draftin)

function main:board/delete
function main:board/load
scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] turnCost 4
tag @e[type=armor_stand,tag=id,tag=board.center,limit=1] add drafting

execute as @a[tag=game.start,limit=2] run function main:board/player_setup
scoreboard players set @a[tag=game.start] turnCount 0
scoreboard players reset @a[tag=game.start] rightClick
clear @a[tag=game.start]
execute as @a[tag=game.start] run function main:board/drafting/cards
tag @a remove game.start

tag @a remove board.load.player

execute at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run setblock ~ ~ ~ shulker_box
execute at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run setblock ~ ~ ~ shulker_box
