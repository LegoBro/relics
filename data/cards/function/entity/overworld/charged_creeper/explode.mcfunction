## explosions!
#playsound minecraft:entity.generic.eat master @a[tag=id] ~ ~ ~ 10 1 1
scoreboard players set @s health 0
scoreboard players operation #damage var = @s attack
execute positioned ~ ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~-4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage

scoreboard players operation #damage var = @s attack
scoreboard players operation #damage var /= #2 var
execute positioned ~8 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~-8 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~8 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~-8 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage

execute positioned ~4 ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~4 ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~-4 ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~-4 ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage


scoreboard players set @s saturation 5
execute positioned ~4 ~ ~ at @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] run function main:player/raycast/select/mine
scoreboard players set @s saturation 5
execute positioned ~-4 ~ ~ at @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] run function main:player/raycast/select/mine
scoreboard players set @s saturation 5
execute positioned ~ ~ ~4 at @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] run function main:player/raycast/select/mine
scoreboard players set @s saturation 5
execute positioned ~ ~ ~-4 at @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] run function main:player/raycast/select/mine
playsound minecraft:entity.generic.explode hostile @a[tag=id] ~ ~ ~ 10 1 1
