## Applies damage to an entity

# DOT (applied later)

execute unless score @s fire >= #fire var run scoreboard players operation @s fire += #fire var
execute unless score @s poison >= #poison var run scoreboard players operation @s poison = #poison var
execute unless score @s wither >= #wither var run scoreboard players operation @s wither = #wither var

execute if entity @s[tag=fire_proof] run scoreboard players set @s fire 0
execute if entity @s[tag=poison_proof] run scoreboard players set @s poison 0
execute if entity @s[tag=wither_proof] run scoreboard players set @s wither 0
