## Place a cobblestone block
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add trap
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add sculk_sensor_trap
execute if entity @s[tag=player.1] run tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add sculk_sensor_trap.1
execute if entity @s[tag=player.2] run tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add sculk_sensor_trap.2
scoreboard players add @s play.trap 1
