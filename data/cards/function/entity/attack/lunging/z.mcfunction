## X movement attack
## If hits destination, which can be ignored
execute if score #startZ var >= #destZ var run return run function cards:entity/attack/lunging/attack
scoreboard players add #startZ var 1
execute as @e[tag=board,tag=id,tag=filled,tag=!destination] if score @s z = #startZ var if score @s x = #startX var run tag @s add attack.target.cell
function cards:entity/attack/lunging/z