## Ticks as all players
execute if entity @s[tag=!loaded] run function main:player/load

## Global Link - 
scoreboard players add @s world.link 1
execute unless score @s world.link = #GLOBAL world.link run scoreboard players set @s music.time -100
execute unless score @s world.link = #GLOBAL world.link run function main:player/send_to_lobby

team join in_game @s[scores={id=0..},team=!in_game]
team join lobby @s[scores={id=-1},team=in_game]
gamemode adventure @s[team=in_game,gamemode=spectator]
xp set @s[team=lobby] 0 levels
xp set @s[team=lobby] 0 points
execute if entity @s[gamemode=adventure] as @e[type=item,distance=..3] run data merge entity @s {PickupDelay:0}
execute if entity @s[gamemode=adventure] run tp @e[type=item,distance=..3] @s

execute as @s[gamemode=!creative,team=lobby,tag=!creative] run function main:player/lobby
execute as @s[gamemode=!creative,team=waiting,tag=!creative] run function main:player/lobby

# Status effects
effect give @s saturation infinite 10 true
effect give @s minecraft:weakness infinite 10 true
effect give @s[team=!in_game] minecraft:resistance infinite 10 true

execute if entity @s[tag=!turn,team=in_game] run function main:player/raycast/simple/start
execute if entity @s[team=!in_game,gamemode=!adventure] run function main:player/raycast/simple/start

## Daily money
scoreboard players operation #time_test var = @s world.link
scoreboard players operation #time_test var -= @s dailyLoginTime
execute if score #time_test var matches 1728000.. run function main:player/daily_reward

scoreboard players set @s set.fatigue -2
