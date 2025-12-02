## Hovers for the player
effect give @e[type=armor_stand,tag=hovered.slot,tag=id] minecraft:glowing 1 0 true
execute at @e[type=armor_stand,tag=selected,tag=id] run effect give @e[tag=card.entity,tag=id,limit=1,sort=nearest] minecraft:glowing 1 0 true
team join green @e[type=armor_stand,tag=selected,tag=id]

function main:player/raycast/selected/display
execute if score @s rightClick matches 1.. at @e[type=armor_stand,tag=selected,limit=1,sort=nearest] run function main:player/raycast/selected/click
