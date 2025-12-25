## Find the nearest board segment
scoreboard players reset #raycast var
tag @e[tag=hovered.slot,tag=id] remove hovered.slot
tag @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id] add hovered.slot

effect clear @e[type=armor_stand,tag=board,tag=id,tag=!selected] minecraft:glowing

# Cell data get
execute as @e[type=armor_stand,tag=hovered.slot,tag=id,distance=..5] run function main:board/cell/get

## Player data get
execute store result score #holding_card var if items entity @s weapon.mainhand *[custom_data~{card:{}}]
execute store result score #holding_selector var if items entity @s weapon.mainhand *[custom_data~{selector:1b}]
execute store result score #player1 var if entity @s[tag=player.1]

# Display Cell
execute as @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..5] run function main:player/raycast/select/display
execute if score #holding_selector var matches 1 run effect give @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..5] minecraft:glowing 1 0 true

## Start of conditions, seen below

# Draw Pile - right click to draw
execute if score #draw_pile var matches 1 run return run function main:player/raycast/display/draw
# Selected Entity - right click to deselect, attack, or move
execute if entity @s[tag=selected] run return run function main:player/raycast/selected/hover

# Defensive Building - attack with card, can't select
execute if score #blocked var matches 1 run return run function main:player/raycast/display/block

# Entity - can be selected or buffed
execute if score #filled var matches 1 run return run function main:player/raycast/display/nametag

# Looking at nothing, can use
title @s actionbar ""

execute if score #holding_card var matches 1 run return run function main:player/raycast/use/hover


