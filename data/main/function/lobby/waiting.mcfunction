## Waiting commands

scoreboard players set #waiting var 0
execute as @a[tag=waiting] run scoreboard players add #waiting var 1
scoreboard players operation Players: display_wait = #waiting var

execute if score #waiting var matches ..1 run scoreboard players set #next var 119

scoreboard players remove #next var 1
scoreboard players operation #next display = #next var
scoreboard players operation #next display /= #20 var
execute if score #waiting var matches 2.. run scoreboard players operation Countdown: display_wait = #next display
execute if score #waiting var matches ..1 run scoreboard players reset Countdown: display_wait
execute if score #next var matches 0 as @a[tag=waiting,limit=2] run tag @s add game.start
execute if score #next var matches 0 as @p[tag=game.start] at @s if entity @p[tag=game.start,distance=1..] run function main:arena/create/arena
execute if score #next var matches ..0 run scoreboard players set #next var 119
