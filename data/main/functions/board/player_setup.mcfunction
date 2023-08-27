## Sets a player up
scoreboard players reset @s matchDuration
tag @s add board.load.player
tag @s remove player.1
tag @s remove player.2
tag @s remove wait
tag @s remove turn
scoreboard players set @s endTurn 0
scoreboard players set @s turnTimer -2400
scoreboard players operation @s id = game.id var

execute if entity @a[tag=board.load.player,tag=player.1] run function main:board/player/2
execute unless entity @a[tag=board.load.player,tag=player.1] run function main:board/player/1



scoreboard players operation @s saturation = @e[type=armor_stand,tag=board.center,limit=1,tag=id] turnCost

clear @s

item replace entity @s inventory.0 with potion{display:{Name:'{"translate":"forfeit"}'},Potion:"minecraft:water"}
item replace entity @s hotbar.0 with carrot_on_a_stick{selector:1b}

tag @s remove waiting
