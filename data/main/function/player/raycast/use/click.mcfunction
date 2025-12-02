## Ran when player clicks on a slot (0-7)
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=!green,team=!purple] run function cards:use/fail
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=purple] run function cards:discard
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=green] run function cards:use
scoreboard players reset @s rightClick
execute as @e[tag=board,tag=id] run function main:board/cell/display
#say test
