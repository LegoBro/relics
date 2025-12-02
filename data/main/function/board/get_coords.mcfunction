## Grabs the coordinates of a part of the board and stores them in fake scoreboards for easy access
scoreboard players operation #selected.x var = @s x
scoreboard players operation #selected.z var = @s z

execute store result score #ignored var if entity @s[tag=draw_pile]
