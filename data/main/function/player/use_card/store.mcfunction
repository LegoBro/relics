## Stores stuff and runs at

execute if entity @s[tag=player.1] at @e[type=armor_stand,tag=board.player.1,tag=id] run function main:player/use_card/copy
execute if entity @s[tag=player.2] at @e[type=armor_stand,tag=board.player.2,tag=id] run function main:player/use_card/copy
