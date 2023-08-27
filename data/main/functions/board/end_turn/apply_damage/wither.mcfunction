## Applies damage if wither

scoreboard players set #damage var 1
execute if entity @s run function cards:entity/apply_pierce_damage
scoreboard players remove @s wither 1
scoreboard players remove @s[tag=hero.1,scores={wither=1..}] wither 1
scoreboard players remove @s[tag=hero.2,scores={wither=1..}] wither 1
