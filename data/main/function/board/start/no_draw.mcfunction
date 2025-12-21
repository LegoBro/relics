## Starts up the game

function main:board/delete
function main:board/load
scoreboard players set @e[type=armor_stand,tag=id,tag=board.center,limit=1] turnCost 4
tag @e[type=armor_stand,tag=id,tag=board.center,limit=1] add noCardHurt

execute as @a[tag=game.start,limit=2] run function main:board/player_setup


kill @e[type=armor_stand,tag=draw_pile,tag=id]

data merge block 0 0 0 {Items:[]}
execute at @e[type=armor_stand,tag=board.player.1,tag=id] positioned ~ ~-2 ~ run data modify block 0 0 0 Items set from block ~ ~ ~ Items
loot give @p[tag=board.load.player,tag=player.1] mine 0 0 0 minecraft:stone[custom_data={drop_contents:1b}]

data merge block 0 0 0 {Items:[]}
execute at @e[type=armor_stand,tag=board.player.2,tag=id] positioned ~ ~-2 ~ run data modify block 0 0 0 Items set from block ~ ~ ~ Items
loot give @p[tag=board.load.player,tag=player.2] mine 0 0 0 minecraft:stone[custom_data={drop_contents:1b}]

tag @a remove game.start
tag @a remove board.load.player