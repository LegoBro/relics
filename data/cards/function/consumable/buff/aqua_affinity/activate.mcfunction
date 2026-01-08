# hit with anvil
playsound minecraft:block.enchantment_table.use hostile @a[tag=id] ~ ~ ~ 1 2 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run tag @s add water

function cards:consumable/generic/use_enchantment