## Click to move

execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=red] run function main:player/raycast/selected/fail_move
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=dark_green] run function cards:unselect

execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=gray] run function main:player/raycast/selected/success_minecart_move
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=yellow] run function main:player/raycast/selected/success_move
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=orange] run function main:player/raycast/selected/attack/success

scoreboard players reset @s rightClick
