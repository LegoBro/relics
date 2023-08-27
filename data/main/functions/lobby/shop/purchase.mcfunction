## Purchase from shop
# Get the display into dummy
execute as @e[tag=shop.display] at @s run scoreboard players operation #test var = @s display
scoreboard players set #state var 0

execute unless score @s dubloons >= #price var run scoreboard players set #state var 1
execute if score #tournamentLobby var matches 1 run scoreboard players set #state var 2

execute if score #state var matches 0 run function main:lobby/shop/success
execute if score #state var matches 1 run function main:lobby/shop/fail
execute if score #state var matches 2 run function main:lobby/shop/tournament
