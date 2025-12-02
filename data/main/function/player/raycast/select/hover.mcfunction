## Hovers for the player

effect give @e[type=armor_stand,tag=hovered.slot] minecraft:glowing 1 0 true

execute store result score #player1 var if entity @s[tag=player.1]
# Display
execute as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:player/raycast/select/display

execute if score @s rightClick matches 1.. at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,sort=nearest] run function main:player/raycast/select/click