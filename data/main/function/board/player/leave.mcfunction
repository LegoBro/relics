## Player has left, do stuff in here until time runs out
# 
scoreboard players add @s leaveTimer 1

# Counter-acts the turn timer, since their ability is being disabled here.
scoreboard players remove @s turnTimer 1

execute if score @s leaveTimer matches 2 run tellraw @s [{translate:"game.player.left_warning",color:red}]

execute if score @s leaveTimer matches 2400.. run function main:board/win/begin