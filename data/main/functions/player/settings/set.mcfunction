## Copy player's settings into a file
execute if score @s setting matches 0 run scoreboard players set @s set.mode 0
execute if score @s setting matches 1 run scoreboard players set @s set.mode 1
execute if score @s setting matches 2 run scoreboard players set @s set.mode 2
execute if score @s setting matches 3 run scoreboard players set @s set.mode 3

execute if score @s setting matches 11 run scoreboard players set @s set.time 0
execute if score @s setting matches 10 run scoreboard players set @s set.time 1

execute if score @s setting matches 20 run scoreboard players set @s set.handSize 3
execute if score @s setting matches 21 run scoreboard players set @s set.handSize 5
execute if score @s setting matches 22 run scoreboard players set @s set.handSize 8

execute if score @s setting matches 30 run scoreboard players set @s set.fatigue -2000000
execute if score @s setting matches 31 run scoreboard players set @s set.fatigue 0
execute if score @s setting matches 32 run scoreboard players set @s set.fatigue -1
execute if score @s setting matches 33 run scoreboard players set @s set.fatigue -2

scoreboard players operation #set.mode var = @s set.mode
scoreboard players operation #set.time var = @s set.time
scoreboard players operation #set.handSize var = @s set.handSize
scoreboard players operation #set.fatigue var = @s set.fatigue


function main:player/settings/display

playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 1 0
scoreboard players set @s setting -1
