## Place a cobblestone block
playsound block.stone.place master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] positioned ~ ~1 ~ run function cards:consumable/defend/jail/set

## Kill the entity
execute as @e[tag=card.entity,tag=id,distance=..1.5] run function cards:consumable/defend/jail/kill
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove friendly
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add hostile
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
