scoreboard players set #damage var 1
execute if entity @s run function cards:entity/apply_damage
tellraw @a[tag=id,tag=turn] {"translate":"no_draw.hero_damage","color":"red"}