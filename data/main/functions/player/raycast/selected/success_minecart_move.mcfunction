## Moves the entity
kill @e[type=minecart,limit=1,sort=nearest,distance=..1.5]
tag @e[tag=card.entity,tag=id,limit=1,sort=nearest] add moving
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add destination
tag @e[type=armor_stand,tag=selected,tag=id] add start
function cards:entity/move

execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run tag @e[tag=card.entity,tag=id,limit=1,sort=nearest] add moved_minecart
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run tag @e[tag=card.entity,tag=id,limit=1,sort=nearest] remove in_minecart
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add movable
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run summon minecart ~ ~1 ~ {Tags:["card.display"]}
tag @s remove selected
playsound minecraft:entity.minecart.riding master @a[tag=id] ~ ~ ~ 1 1

scoreboard players set #damage var 5
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,tag=tnt,distance=..2] at @s run function cards:entity/apply_pierce_damage