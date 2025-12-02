# Begin win condition
tag @e[type=armor_stand,tag=board.center,tag=!tutorial,tag=!end,tag=id] add end
tag @s add winner
execute if entity @s[tag=player.1] run tag @a[tag=id,tag=player.2] add loser
execute if entity @s[tag=player.2] run tag @a[tag=id,tag=player.1] add loser
scoreboard players set @e[type=armor_stand,tag=board.center,tag=id] turnTimer 0