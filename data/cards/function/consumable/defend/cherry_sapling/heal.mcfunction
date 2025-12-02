# Healing
scoreboard players set #heal var 1
execute as @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] if entity @s[tag=friendly] at @e[type=armor_stand,tag=board,tag=filled,tag=id,tag=friendly] as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=!unbuffable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
execute as @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] if entity @s[tag=hostile] at @e[type=armor_stand,tag=board,tag=filled,tag=id,tag=hostile] as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=!unbuffable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
# Count
execute as @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest,tag=friendly,distance=..1.5] run scoreboard players add #cherry_count var 1
