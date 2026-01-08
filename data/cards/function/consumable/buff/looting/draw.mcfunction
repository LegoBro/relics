## Draw a card each unit killed

scoreboard players add @s saturation 2
execute unless function main:player/raycast/select/draw run scoreboard players remove @s saturation 2
