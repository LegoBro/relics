## explosions!
#playsound minecraft:entity.generic.eat master @a[tag=id] ~ ~ ~ 10 1 1
scoreboard players set @s health 0
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]
scoreboard players set #explode_targets var 0
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add #explode_targets var 1
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add #explode_targets var 1
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add #explode_targets var 1
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add #explode_targets var 1
execute if score #explode_targets var matches 4 if score #friendly var matches 1 run advancement grant @a[tag=id,tag=turn] only main:quests/creeper
execute if score #explode_targets var matches 4 if score #friendly var matches 0 run advancement grant @a[tag=id,tag=wait] only main:quests/creeper

scoreboard players operation #damage var = @s attack
execute positioned ~ ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage

playsound minecraft:entity.generic.explode hostile @a[tag=id] ~ ~ ~ 10 1 1
