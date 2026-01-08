## Displays for the front
execute as @e[type=armor_stand,tag=hovered.slot,tag=id] run team join red @s
execute if entity @s[tag=player.1] if score #z var matches 1..4 as @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled] run function main:player/raycast/display/pass

execute if entity @s[tag=player.2] if score #z var matches 2..5 as @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled] run function main:player/raycast/display/pass
