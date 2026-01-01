## Freeze all mobs this is big oof card
summon snowball ~ ~4 ~ {Item:{id:"minecraft:ice",count:1b}}
scoreboard players set #damage var 1
function cards:entity/apply_damage
scoreboard players remove @s[scores={speed=1..}] speed 1
