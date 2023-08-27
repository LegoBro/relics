## Random chance of growing wool back

execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_3
execute if score @s armor matches 0 if score #rand var matches 0 run scoreboard players add @s armor 1
data merge entity @s[scores={armor=0}] {Sheared:1b}
data merge entity @s[scores={armor=1..}] {Sheared:0b}
