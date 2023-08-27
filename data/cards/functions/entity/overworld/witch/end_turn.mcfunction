## Randomly buffs a friendly unit
execute if entity @s[team=green] if entity @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=movable,distance=..1.5] as @e[tag=id,tag=card.entity,limit=1,sort=random,team=green] run function cards:entity/overworld/witch/buff
