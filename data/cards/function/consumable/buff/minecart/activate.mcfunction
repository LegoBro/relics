playsound block.chain.place hostile @a[tag=id] ~ ~ ~ 1 0 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run tag @s add in_minecart
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] at @e[tag=card.entity,tag=id,limit=1,sort=nearest] run summon minecart ~ ~ ~ {Tags:["card.display"]}

execute as @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] if entity @e[tag=card.entity,tag=tnt,tag=id,limit=1,sort=nearest] run tag @s add movable
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=tnt,tag=id,limit=1,sort=nearest] run tag @s remove unselectable
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=tnt,tag=id,limit=1,sort=nearest] run scoreboard players set @s speed 0