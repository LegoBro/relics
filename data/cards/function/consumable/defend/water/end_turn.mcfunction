# BLINDNESS
function cards:entity/overworld/dolphin/label_water
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~4 ~ ~ as @e[tag=attackable,tag=water,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s speed_pot 3
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~-4 ~ ~ as @e[tag=attackable,tag=water,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s speed_pot 3
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~4 as @e[tag=attackable,tag=water,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s speed_pot 3
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~-4 as @e[tag=attackable,tag=water,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s speed_pot 3

scoreboard players set #damage var 1
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~4 ~ ~ as @e[tag=attackable,tag=blaze,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~-4 ~ ~ as @e[tag=attackable,tag=blaze,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~4 as @e[tag=attackable,tag=blaze,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~-4 as @e[tag=attackable,tag=blaze,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage

execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players reset @s fire
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players reset @s fire
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players reset @s fire
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players reset @s fire
