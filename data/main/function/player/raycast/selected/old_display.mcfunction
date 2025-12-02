## Display
scoreboard players operation #temp.x var = @e[type=armor_stand,tag=hovered.slot,tag=id] x

scoreboard players operation #temp.x var -= @s x
execute if score #temp.x var matches ..-1 run scoreboard players operation #temp.x var /= #-1 var

scoreboard players operation #temp.z var = @e[type=armor_stand,tag=hovered.slot,tag=id] z
scoreboard players operation #temp.z var -= @s z
execute if score #temp.z var matches ..-1 run scoreboard players operation #temp.z var /= #-1 var

scoreboard players operation #temp.z var += #temp.x var

execute as @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=id] run function main:player/raycast/selected/display/move
execute as @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id] run function main:player/raycast/selected/display/move

team join red @e[type=armor_stand,tag=hovered.slot,tag=id]
execute if score @s speed >= #temp.z var run team join yellow @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=id]
execute if score @s range >= #temp.z var run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=hostile,tag=id]
execute at @e[type=armor_stand,tag=hovered.slot,tag=hostile,tag=id,team=orange] run effect give @e[tag=card.entity,tag=id,limit=1,sort=nearest] glowing 1 0 true
execute if score #temp.z var matches 0 run team join dark_green @e[type=armor_stand,tag=hovered.slot,tag=id]

# Entity looks at target (if in range)
execute unless score #temp.z var matches 0 at @e[type=armor_stand,tag=selected,tag=id] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,sort=nearest]
