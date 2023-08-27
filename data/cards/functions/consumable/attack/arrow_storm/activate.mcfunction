# hit with arrows
playsound entity.arrow.shoot master @a[tag=id] ~ ~ ~ 10 1 1
scoreboard players set #damage var 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ run summon arrow ~ ~6 ~ {Motion:[0.0,-1.0,0.0]}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ run summon arrow ~ ~6 ~ {Motion:[0.0,-1.0,0.0]}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~4 run summon arrow ~ ~6 ~ {Motion:[0.0,-1.0,0.0]}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~-4 run summon arrow ~ ~6 ~ {Motion:[0.0,-1.0,0.0]}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] run summon arrow ~ ~6 ~ {Motion:[0.0,-1.0,0.0]}

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
