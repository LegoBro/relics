# binding
playsound minecraft:block.enchantment_table.use hostile @a[tag=id] ~ ~ ~ 1 0 1
scoreboard players add @p[tag=id,tag=wait] binding_timer 6

execute as @e[tag=librarian,tag=id] if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s maxHealth 1
execute as @e[tag=librarian,tag=id] if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s health 1