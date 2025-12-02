execute unless score @s reset matches 10 run tellraw @s {"translate":"reset"}
execute if score @s reset matches 10 run function main:player/reset
scoreboard players set @s reset -1
