## Sets a player up
tag @s remove player.1
tag @s remove player.2
tag @s remove wait
tag @s remove turn
scoreboard players operation @s id = game.id var

function main:board/player/1



scoreboard players operation @s saturation = @e[type=armor_stand,tag=board.center,limit=1,tag=id] turnCost

clear @s
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={selector:1b},item_model=arrow]
item replace entity @s inventory.0 with potion[custom_name={"translate":"forfeit"},potion_contents="minecraft:water"]
