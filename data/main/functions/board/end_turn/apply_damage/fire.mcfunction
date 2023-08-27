## Applies damage if fire

scoreboard players set #damage var 1
execute if entity @s run function cards:entity/apply_damage
scoreboard players remove @s fire 1
scoreboard players remove @s[tag=hero.1,scores={fire=1..}] fire 1
scoreboard players remove @s[tag=hero.2,scores={fire=1..}] fire 1
