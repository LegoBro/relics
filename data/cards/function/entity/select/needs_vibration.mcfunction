## sets up distance values for selected entity


execute as @e[type=armor_stand,tag=board,tag=id,distance=..200,sort=nearest,tag=hostile] run item replace entity @s armor.head with book[item_model="cell_state/empty"]

scoreboard players set @e[type=armor_stand,tag=board,tag=id,distance=..200,sort=nearest,tag=hostile,tag=!vibration_signal] distance 100

execute as @e[type=armor_stand,tag=board,tag=id,distance=..200,sort=nearest,tag=hostile,tag=vibration_signal] at @s if score @s distance <= #range var run item replace entity @s armor.head with book[item_model="cell_state/attack"]

execute as @e[type=armor_stand,tag=board,tag=id,distance=..200,sort=nearest,tag=hostile,tag=vibration_signal] at @s if score @s distance <= #range var run scoreboard players set @s distance 1