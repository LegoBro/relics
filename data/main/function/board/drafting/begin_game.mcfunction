## Begins the game by clearing up player stuff

execute at @e[type=armor_stand,tag=board.player.1,tag=id] run data modify block 0 0 1 Items set from block ~ ~-3 ~ Items
function helper:deck/clone/shulker_to_data

## Copy data to selected_deck???
function helper:deck/clone/data_to_selected
function helper:deck/clone/selected_to_data
tag @s add selected_draft_reset

#execute at @e[type=armor_stand,tag=board.player.2,tag=id] run #function main:player/use_card/copy

scoreboard players reset @a[tag=id] turnCount
clear @a[tag=id]
item replace entity @a[tag=id] hotbar.0 with carrot_on_a_stick[custom_data={selector:1b},item_model=arrow]
item replace entity @a[tag=id] inventory.0 with potion[item_name={"translate":"forfeit"},potion_contents="minecraft:water"]
tag @e[type=armor_stand,tag=id,tag=board.center,limit=1] remove drafting
title @a[tag=id] times 5 30 10
title @a[tag=id] title {"translate":"game.begin","color":"dark_red"}
scoreboard players set @a[tag=id] turnTimer -2400
