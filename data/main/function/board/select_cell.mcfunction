## Select a cell - executed as player
execute as @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..5] at @s run function main:board/cell/select

tag @s add selected

scoreboard players operation @s x = #x var
scoreboard players operation @s z = #z var

## Copy Selected entity stats into players
scoreboard players operation @s speed = #entity_speed var
scoreboard players operation @s range = #entity_range var

# Calculate Cells distance
scoreboard players operation #range var = @s range
scoreboard players operation #speed var = @s speed
execute as @e[type=armor_stand,tag=id,tag=board] at @s run function main:board/cell/distance

## Specialty Overrides

# Needs Vibration (warden)
execute if entity @s[tag=needs_vibration] run function cards:entity/select/needs_vibration

# Ender pearl handling
execute if entity @s[tag=ender_pearl] as @e[type=armor_stand,tag=board,tag=!filled,tag=!draw_pile,tag=!discard_pile,tag=id] at @s run scoreboard players set @s distance 1
execute if entity @s[tag=ender_pearl] run item replace entity @e[type=armor_stand,tag=board,tag=!filled,tag=!draw_pile,tag=!discard_pile,tag=id] armor.head with book[item_model="cell_state/move"]
scoreboard players set @s[tag=ender_pearl] speed 10

# Minecart Handling
tag @e[tag=id,tag=board,tag=minecart.rail_path] remove minecart.rail_path
execute if entity @e[tag=card.entity,limit=1,distance=..1.5,sort=nearest,tag=id,tag=in_minecart] run function cards:entity/minecart

# Lunging Handling

## Entity Select Effects
execute as @n[tag=card.entity,tag=id] at @s run function cards:entity/select_dict
