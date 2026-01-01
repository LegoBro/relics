## Applies damage to an entity

# health if no armor
scoreboard players operation #health var = @s health
scoreboard players operation #maxHealth var = @s maxHealth
scoreboard players operation #armor var = @s armor


# DOTS
scoreboard players operation #dealt_fire var += #fire var
scoreboard players operation #dealt_poison var += #poison var
scoreboard players operation #dealt_wither var += #wither var

execute if score #pierce_damage var matches 1.. run scoreboard players set #armor var 0
execute if score #pierce_damage var matches 1.. run scoreboard players operation #damage var = #pierce_damage var

## Heal chunk - afterall healing is just negative damage, right?
execute if score #damage var matches ..-1 run return run function cards:entity/display/heal

## Damage Chunk
execute unless score #armor var matches 1.. run scoreboard players operation #health var -= #damage var
execute unless score #armor var matches 1.. run scoreboard players operation #dealt_damage var += #damage var
execute if score #health var matches ..0 run scoreboard players add #dealt_deaths var 1 
execute if score #health var matches ..-1 run scoreboard players operation #dealt_damage var += #health var
execute unless score #armor var matches 1.. run return 0

# armor instead
scoreboard players operation #armor var -= #damage var
scoreboard players operation #dealt_damage_armor var += #damage var
execute if score #armor var matches ..-1 at @s run scoreboard players operation #dealt_damage_armor var += #armor var


# Display
#kill @e[type=area_effect_cloud,tag=display_health,tag=id]

#execute if score @s[tag=card.end] health matches 1.. at @s run function cards:entity/end/teleport
