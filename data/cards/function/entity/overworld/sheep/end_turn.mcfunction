## Random chance of growing wool back

scoreboard players add @s endTurn 1
execute if score @s endTurn matches 4.. run scoreboard players set @s endTurn 0
execute if score @s endTurn matches 0 run scoreboard players add @s armor 1
data merge entity @s[scores={armor=0}] {Sheared:1b}
data merge entity @s[scores={armor=1..}] {Sheared:0b}
