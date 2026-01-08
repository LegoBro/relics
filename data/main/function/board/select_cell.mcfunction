## Select a cell - executed as player
execute unless score #friendly_movable var matches 1 run return fail
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
#execute as @e[type=armor_stand,tag=id,tag=board,tag=!discard_pile,tag=!draw_pile] at @s run function main:board/cell/distance

# Distance Logic
tag @e[type=armor_stand,tag=board,tag=id,distance=..250] remove distance
tag @e[type=armor_stand,tag=board,tag=id,distance=..250] remove new_distance
scoreboard players set @e[type=armor_stand,tag=board,tag=id,distance=..250] distance 100
scoreboard players set @e[type=armor_stand,tag=selected,tag=id,distance=..250] distance 0

execute as @n[type=armor_stand,tag=selected,tag=id,distance=..250] at @s run function main:player/raycast/selected/distances

## Specialty Overrides
execute as @n[tag=card.entity,distance=..1.5,tag=id] run function cards:entity/select/overrides

# Ender pearl handling
execute if entity @n[tag=board.player.1,tag=selected,tag=id,distance=..100] run return 0
execute if entity @n[tag=board.player.2,tag=selected,tag=id,distance=..100] run return 0
execute if entity @s[tag=ender_pearl] as @e[type=armor_stand,tag=board,tag=!filled,tag=!draw_pile,tag=!discard_pile,tag=id] at @s run scoreboard players set @s distance 1
execute if entity @s[tag=ender_pearl] run item replace entity @e[type=armor_stand,tag=board,tag=!filled,tag=!draw_pile,tag=!discard_pile,tag=id] armor.head with book[item_model="cell_state/move"]
scoreboard players set @s[tag=ender_pearl] speed 10