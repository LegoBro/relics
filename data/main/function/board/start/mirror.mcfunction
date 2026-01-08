## Starts up the game

function main:board/delete
function main:board/load
scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] turnCost 4

execute as @a[tag=game.start,limit=2] run function main:board/player_setup
tag @a remove game.start
tag @a remove board.load.player

execute store result score #rand var run random value 0..7
execute if score #rand var matches 0 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 0 12 0 0 ~ ~ ~
execute if score #rand var matches 0 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 0 12 0 0 ~ ~ ~

execute if score #rand var matches 1 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 1 12 0 1 ~ ~ ~
execute if score #rand var matches 1 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 1 12 0 1 ~ ~ ~

execute if score #rand var matches 2 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 2 12 0 2 ~ ~ ~
execute if score #rand var matches 2 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 2 12 0 2 ~ ~ ~

execute if score #rand var matches 3 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 3 12 0 3 ~ ~ ~
execute if score #rand var matches 3 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 3 12 0 3 ~ ~ ~

execute if score #rand var matches 4 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 4 ~ ~ ~
execute if score #rand var matches 4 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 4 ~ ~ ~

execute if score #rand var matches 5 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 5 ~ ~ ~
execute if score #rand var matches 5 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 5 ~ ~ ~

execute if score #rand var matches 6 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 6 ~ ~ ~
execute if score #rand var matches 6 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 6 ~ ~ ~

execute if score #rand var matches 7 at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 7 ~ ~ ~
execute if score #rand var matches 7 at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run clone 12 0 4 12 0 7 ~ ~ ~