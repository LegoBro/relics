## Display

# Get distance from hovered slot
scoreboard players operation #distance var = @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance
#title @p actionbar [{"text":"Distance: "},{"score":{"name":"#distance","objective":"var"}}]


execute as @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!blocked,tag=id] run function main:player/raycast/selected/display/move
execute as @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id] run function main:player/raycast/selected/display/attack

team join red @e[type=armor_stand,tag=hovered.slot,tag=id]
execute if score @s speed >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,tag=!minecart.rail_path] distance run team join yellow @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!blocked,tag=id]
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,tag=minecart.rail_path] run team join gray @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!blocked,tag=id]
execute if score @s[tag=!needs_vibration] range >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=hostile,tag=id]
execute if score @s[tag=needs_vibration] range >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,tag=vibration_signal] distance run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=hostile,tag=id]
execute if score @s range >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=blocked,tag=id]
execute at @e[type=armor_stand,tag=hovered.slot,tag=hostile,tag=id,team=orange] run effect give @e[tag=attackable,tag=id,limit=1,sort=nearest] glowing 1 0 true
execute if score #distance var matches 0 run team join dark_green @e[type=armor_stand,tag=hovered.slot,tag=id]

# Entity looks at target (if in range)
execute unless score #distance var matches 0 at @e[type=armor_stand,tag=selected,tag=id] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,sort=nearest]
