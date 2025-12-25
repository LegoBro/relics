## X movement attack
## If hits destination, which can be ignored
execute if score #startX var >= #destX var run return run function cards:entity/attack/lunging/attack
scoreboard players add #startX var 1
execute as @e[tag=board,tag=id,tag=filled,tag=!destination] if score @s x = #startX var if score @s z = #startZ var run tag @s add attack.target.cell
function cards:entity/attack/lunging/x