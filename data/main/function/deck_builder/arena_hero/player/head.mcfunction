execute store result score #head var run clear @s player_head{Hero:0}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 0
execute store result score #head var run clear @s player_head{Hero:1}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 1
execute store result score #head var run clear @s player_head{Hero:2}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 2
execute store result score #head var run clear @s player_head{Hero:3}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 3
execute store result score #head var run clear @s player_head{Hero:4}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 4
execute store result score #head var run clear @s player_head{Hero:5}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 5
execute store result score #head var run clear @s player_head{Hero:6}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 6
execute store result score #head var run clear @s player_head{Hero:7}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 7
execute store result score #head var run clear @s player_head{Hero:8}
execute if score #head var matches 1.. run scoreboard players set @s set.hero 8

execute at @s run playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 1 0
execute at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0
clear @s player_head