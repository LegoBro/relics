## Begins the game by clearing up player stuff
scoreboard players reset @a[tag=id] turnCount
clear @a[tag=id]
item replace entity @a[tag=id] hotbar.0 with carrot_on_a_stick{selector:1b}
item replace entity @a[tag=id] inventory.0 with potion{display:{Name:'{"translate":"forfeit"}'},Potion:"minecraft:water"}
tag @e[type=armor_stand,tag=id,tag=board.center,limit=1] remove drafting
title @a[tag=id] times 5 30 10
title @a[tag=id] title {"translate":"game.begin","color":"dark_red"}
scoreboard players set @a[tag=id] turnTimer -2400
