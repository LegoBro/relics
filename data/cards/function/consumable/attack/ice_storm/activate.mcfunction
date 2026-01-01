# teleport randomly
playsound block.glass.break master @a[tag=id] ~ ~ ~ 10 2 1
execute as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=id,tag=!frozen,distance=..100] at @s run function cards:consumable/attack/ice_storm/freeze
