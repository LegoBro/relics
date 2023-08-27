## Send the player to lobby (most likely, after a leave)
team join lobby @s
tp @s 8 200.125 8
clear @s
gamemode adventure @s
scoreboard players set @s id -1
scoreboard players reset @s duel.id
scoreboard players reset @s duel.timer
scoreboard players operation @s world.link = #GLOBAL world.link
scoreboard players reset @s rightClick
scoreboard players reset @s endTurn
scoreboard players reset @s binding_timer
scoreboard players reset @s tnt.kills
scoreboard players reset @s play.piston

## If tournament maybe?
execute if entity @s[tag=tournament] unless score #tournamentLobby var matches 1 run function main:player/load
execute if entity @s[tag=!tournament] if score #tournamentLobby var matches 1 run function main:player/load