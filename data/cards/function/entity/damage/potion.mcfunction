## Heal/Damage potion applier

scoreboard players set #heal var 0
scoreboard players set #damage var 0

## Damages
execute if score #undead var matches 1.. if entity @s[tag=undead] run scoreboard players operation #damage var = #undead var
execute if score #normal var matches 1.. unless entity @s[tag=undead] run scoreboard players operation #damage var = #normal var

## Heals - neg damage
execute if score #undead var matches ..-1 if entity @s[tag=undead] run scoreboard players operation #heal var -= #undead var
execute if score #normal var matches ..-1 unless entity @s[tag=undead] run scoreboard players operation #heal var -= #normal var


execute if score #damage var matches 1.. run function cards:entity/apply_pierce_damage
execute if score #heal var matches 1.. run function cards:entity/heal
