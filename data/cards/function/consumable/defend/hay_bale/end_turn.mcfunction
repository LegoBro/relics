# strength to weakers
execute if entity @e[type=armor_stand,tag=board,tag=filled,tag=friendly,tag=id,limit=1,distance=..1.5] as @e[tag=id,tag=card.entity] at @s unless score @s attack matches 1.. if entity @e[type=armor_stand,tag=board,tag=filled,tag=friendly,tag=id,limit=1,distance=..1.5] run scoreboard players set @s strength 2
