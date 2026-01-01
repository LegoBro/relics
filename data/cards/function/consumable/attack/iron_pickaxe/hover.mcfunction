# hit with anvil
function main:player/raycast/display/attack/reset
scoreboard players set #damage var 5
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @n[tag=card.building,tag=id,distance=..100] run function cards:entity/display/damage
function main:player/raycast/display/attack/display