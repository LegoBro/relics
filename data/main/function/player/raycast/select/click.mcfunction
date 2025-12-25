## Click to select



#execute at @e[type=armor_stand,tag=hovered.slot,tag=id,team=yellow,limit=1,sort=nearest] run function main:player/raycast/select/mine

execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,team=red,limit=1,sort=nearest] run function cards:select/fail
scoreboard players reset @s rightClick
