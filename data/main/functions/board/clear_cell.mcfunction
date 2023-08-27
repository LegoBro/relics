

tag @s remove filled
tag @s remove friendly
tag @s remove hostile
tag @s remove blocked
tag @s remove block

execute as @e[tag=board,tag=id] run function main:board/cell/display