# hit with anvil
playsound minecraft:item.honeycomb.wax_on master @a[tag=id] ~ ~ ~ 1 1 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.building,tag=attackable,tag=id,limit=1,sort=nearest,distance=..2] run scoreboard players add @s armor 3
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..2] run scoreboard players operation @s maxHealth = @s health
kill @e[type=area_effect_cloud,tag=rename,tag=id]
scoreboard players add @s play.armor 1
