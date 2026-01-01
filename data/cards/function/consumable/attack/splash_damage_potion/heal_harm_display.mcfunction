## Displays heal vs harm on entity

## Damages
execute if score #undead var matches 1.. if entity @s[tag=undead] run scoreboard players operation #pierce_damage var = #undead var
execute if score #normal var matches 1.. unless entity @s[tag=undead] run scoreboard players operation #pierce_damage var = #normal var

## Heals - neg damage
execute if score #undead var matches ..-1 if entity @s[tag=undead] run scoreboard players operation #damage var = #undead var
execute if score #normal var matches ..-1 unless entity @s[tag=undead] run scoreboard players operation #damage var = #normal var


function cards:entity/display/damage

scoreboard players set #pierce_damage var 0
scoreboard players set #damage var 0