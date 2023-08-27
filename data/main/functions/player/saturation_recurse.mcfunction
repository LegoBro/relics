xp add @s 1 levels
scoreboard players remove #xp var 1
execute if score #xp var matches 1.. run function main:player/saturation_recurse