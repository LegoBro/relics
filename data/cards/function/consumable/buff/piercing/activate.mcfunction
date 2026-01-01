# hit with anvil
playsound minecraft:block.enchantment_table.use hostile @a[tag=id] ~ ~ ~ 1 1.75 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run tag @s add piercing
kill @e[type=area_effect_cloud,tag=rename,tag=id]


execute as @e[tag=librarian,tag=id] if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s maxHealth 1
execute as @e[tag=librarian,tag=id] if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s health 1