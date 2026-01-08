## Find the nearest board slot the player is looking at
scoreboard players set #raycast var 60
execute positioned ~ ~1.6 ~ positioned ^ ^ ^1 run function main:player/raycast/recurse

scoreboard players reset @s rightClick