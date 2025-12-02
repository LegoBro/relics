# Draw random card(s)
playsound minecraft:entity.piglin.admiring_item hostile @a[tag=id] ~ ~ ~ 1 0.8 1

# Count piglins on board
scoreboard players set #count var 0
execute as @e[tag=piglin,tag=id] run scoreboard players add #count var 1
execute as @e[tag=piglin_brute,tag=id] run scoreboard players add #count var 1
#execute if score #count var matches 0 run tellraw 
execute if score #count var matches 1.. run function cards:consumable/buff/piglin_bartering/loop
