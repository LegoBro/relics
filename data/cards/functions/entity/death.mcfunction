## An entity dies, freeing up the slot it has

#particle flame ~ ~10 ~
# stores in scoreboard if dying entity was friendly or not
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]

execute as @e[type=armor_stand,tag=filled,tag=id,limit=1,distance=..1.5] run function main:board/clear_cell

execute if score #friendly var matches 0 run scoreboard players add @a[tag=id,tag=turn] entity.kills 1
execute if score #friendly var matches 1 run scoreboard players add @a[tag=id,tag=turn] entity.deaths 1

execute if score #friendly var matches 1 run scoreboard players add @a[tag=id,tag=wait] entity.kills 1
execute if score #friendly var matches 0 run scoreboard players add @a[tag=id,tag=wait] entity.deaths 1

function cards:entity/death_dict

## Sculk Catalyst interaction
execute if entity @e[tag=sculk_catalyst,tag=id] as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run data merge entity @s {CustomName:'{"text":"Sculk Catalyst"}'}
execute if entity @e[tag=sculk_catalyst,tag=id] as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_block/cast

execute if entity @e[tag=butcher,tag=id] run function cards:entity/overworld/butcher/test_death

kill @s
execute as @e[tag=board,tag=id] run function main:board/cell/display
execute as @e[type=minecart,tag=card.display] at @s unless entity @e[tag=card.entity,distance=..1] run kill @s

scoreboard players set #killed var 1
