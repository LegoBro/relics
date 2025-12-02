## Place a cobblestone block
execute as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:consumable/defend/sculk_sensor/trigger_message
tag @s remove sculk_sensor_trap
tag @s remove sculk_sensor_trap.1
tag @s remove sculk_sensor_trap.2
execute as @e[tag=id,tag=sculk_shrieker] at @s run function cards:consumable/defend/sculk_shrieker/shriek