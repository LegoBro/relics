# hit with arrows
playsound minecraft:entity.ghast.warn master @a[tag=id] ~ ~ ~ 10 1 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] run summon fireball ~ ~6 ~ {Motion:[0.0,-0.5,0.0]}
scoreboard players set #damage var 2
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
scoreboard players set #damage var 3
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
