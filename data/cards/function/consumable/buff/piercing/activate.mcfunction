# hit with anvil
playsound minecraft:block.enchantment_table.use hostile @a[tag=id] ~ ~ ~ 1 1.75 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run tag @s add piercing

function cards:consumable/generic/use_enchantment