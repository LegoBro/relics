## Applies damage if poison
scoreboard players set #damage var 1
execute if entity @s[scores={health=2..}] run function cards:entity/apply_pierce_damage

scoreboard players remove @s poison 1
scoreboard players remove @s[tag=hero.1,scores={poison=1..}] poison 1
scoreboard players remove @s[tag=hero.2,scores={poison=1..}] poison 1
