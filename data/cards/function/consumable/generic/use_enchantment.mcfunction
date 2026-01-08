
execute as @e[tag=librarian,tag=id] if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s maxHealth 1
execute as @e[tag=librarian,tag=id] if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s health 1

execute if entity @n[type=armor_stand,tag=enchantment_table,tag=id,distance=..100] run function cards:consumable/defend/enchantment_table/detect