## Get all entity stats

# shield = 🛡
# Heart ♥
# Attack 🗡

# Stats are just raw stats modified after all
function cards:entity/get/raw_stats

# Extra display information for entities
execute if score #range var matches 2.. if entity @s[tag=building.targets] run scoreboard players add #attack var 1

execute if score @s speed_pot matches 1.. run scoreboard players add #speed var 2
execute if score @s slowness matches 1.. run scoreboard players remove #speed var 2

execute if score @s strength matches 1.. if score @s range matches ..1 run scoreboard players add #attack var 3
execute if score @s weakness matches 1.. if score @s range matches ..1 run scoreboard players remove #attack var 4

execute if score @s blindness matches 1.. run scoreboard players remove #range var 2

execute if score #speed var matches ..-1 run scoreboard players set #speed var 0
execute if score #range var matches ..-1 run scoreboard players set #range var 0
execute if score #attack var matches ..-1 run scoreboard players set #attack var 0