## Picky pickaxe

#execute store result score #rot var run data get entity @s Pose.Head[2] 1
execute if score @s turnTimer matches 1 run data merge entity @s {Pose:{Head:[0f,0f,1f]}}
scoreboard players add #rot var 33
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get #rot var
scoreboard players add @s turnTimer 1

#tp @s ^ ^ ^1 ~ ~15
#execute if score @s turnTimer matches 1 run tp @s ~ ~ ~ ~ -90
execute if score @s turnTimer matches 20.. run kill @s
#title @p actionbar {"score":{"name":"#rot","objective":"var"}}
