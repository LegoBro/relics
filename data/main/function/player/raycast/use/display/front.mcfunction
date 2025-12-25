## Displays for the front

execute if entity @s[tag=player.1] if score #z var matches ..1 as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:player/raycast/display/summonable
execute if entity @s[tag=player.1] unless score #z var matches ..1 as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:player/raycast/display/fail

execute if entity @s[tag=player.2] if score #z var matches 5.. as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:player/raycast/display/summonable
execute if entity @s[tag=player.2] unless score #z var matches 5.. as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:player/raycast/display/fail
