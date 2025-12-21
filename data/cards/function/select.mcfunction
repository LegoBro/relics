## Select an entity
tag @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..5] add selected
tag @s add selected

## Get position of entity
scoreboard players operation @s x = @n[type=armor_stand,tag=selected,tag=id,distance=..5] x
scoreboard players operation @s z = @n[type=armor_stand,tag=selected,tag=id,distance=..5] z

## Get stats of entity -> Convert to full breakdown?
execute as @n[tag=card.entity,distance=..5,tag=id] run function cards:entity/calc_speed
scoreboard players operation @s speed = #entity_speed var

execute as @n[tag=card.entity,distance=..5,tag=id] run function cards:entity/calc_range
scoreboard players operation @s range = #entity_range var

## 
execute if entity @n[tag=card.entity,tag=id,tag=needs_vibration,distance=..1.5] run tag @s add needs_vibration



# Distance Logic
tag @e[type=armor_stand,tag=board,tag=id] remove distance
tag @e[type=armor_stand,tag=board,tag=id] remove new_distance
scoreboard players set @e[type=armor_stand,tag=board,tag=id] distance 100
scoreboard players set @e[type=armor_stand,tag=selected,tag=id] distance 0

scoreboard players operation #range var = @s range
scoreboard players operation #speed var = @s speed
execute as @e[type=armor_stand,tag=selected,tag=id] at @s run function main:player/raycast/selected/distances

# Invisibility hiding (can't attack invisible entities)
execute as @e[tag=id,tag=card.entity,scores={invisibility=1..}] at @s run scoreboard players set @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=!selected,distance=..1.5] distance 100

# Needs Vibration (warden)
execute as @e[tag=card.entity,tag=needs_vibration,limit=1,sort=nearest,tag=id] run function cards:entity/select/needs_vibration

# Ender pearl handling
execute if entity @s[tag=ender_pearl] as @e[type=armor_stand,tag=board,tag=!filled,tag=!draw_pile,tag=!discard_pile,tag=id] at @s run scoreboard players set @s distance 1
execute if entity @s[tag=ender_pearl] run item replace entity @e[type=armor_stand,tag=board,tag=!filled,tag=!draw_pile,tag=!discard_pile,tag=id] armor.head with book[item_model="cell_state/move"]
scoreboard players set @s[tag=ender_pearl] speed 10

# Minecart Handling
tag @e[tag=id,tag=board,tag=minecart.rail_path] remove minecart.rail_path
execute if entity @e[tag=card.entity,limit=1,distance=..1.5,sort=nearest,tag=id,tag=in_minecart] run function cards:entity/minecart

execute as @e[tag=card.entity,limit=1,sort=nearest,tag=id] at @s run function cards:entity/select_dict
