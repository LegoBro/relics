# hit with anvil
playsound minecraft:block.brewing_stand.brew hostile @a[tag=id] ~ ~ ~ 1 1.5 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players add @s invisibility 4

function cards:consumable/generic/use_potion