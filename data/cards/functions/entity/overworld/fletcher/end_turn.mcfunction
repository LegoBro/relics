## Give random entity armor
execute if entity @s[team=green] as @e[tag=id,tag=card.entity,tag=!hero.1,tag=!hero.2,limit=1,distance=..4.5,scores={range=2..},team=red] as @p[tag=id,tag=turn] at @s run function cards:consumable/buff/emerald/discover
