## Display

# Get distance from hovered slot
scoreboard players operation #distance var = @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance
#title @p actionbar [{"text":"Distance: "},{"score":{"name":"#distance","objective":"var"}}]


execute as @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!blocked,tag=id] run function main:player/raycast/selected/display/move
execute as @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,tag=!selected] run function main:player/raycast/selected/display/entity

team join red @e[type=armor_stand,tag=hovered.slot,tag=id]
execute if score @s speed >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,tag=!minecart.rail_path] distance run team join yellow @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!blocked,tag=id]
execute if entity @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,tag=minecart.rail_path] run team join gray @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!blocked,tag=id]
execute if score @s[tag=!needs_vibration] range >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=hostile,tag=id]

## Can attack friendlies
execute store result score #can_attack_friendly var at @n[type=armor_stand,tag=selected,distance=..100,tag=id] if entity @n[tag=card.entity,tag=id,tag=can_attack_friendly,distance=..1.5]
execute if score #can_attack_friendly var matches 1 if score @s[tag=!needs_vibration] range >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=friendly,tag=id]

## Selected has spear
execute at @n[type=armor_stand,tag=selected,distance=..100,tag=id] if score @n[tag=card.entity,tag=id,distance=..1.5] spear matches 1.. if score @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance matches ..2 run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id]

execute if score @s[tag=needs_vibration] range >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,tag=vibration_signal] distance run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=hostile,tag=id]
execute if score @s range >= @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance run team join orange @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=blocked,tag=id]
execute at @e[type=armor_stand,tag=hovered.slot,tag=hostile,tag=id,team=orange] run effect give @n[tag=attackable,tag=id,distance=..100] glowing 1 0 true
execute if score #distance var matches 0 run team join dark_green @e[type=armor_stand,tag=hovered.slot,tag=id]

# Entity looks at target (if in range)
execute unless score #distance var matches 0 at @e[type=armor_stand,tag=selected,tag=id] as @n[tag=card.entity,tag=id,distance=..1.5] at @s facing entity @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..100] feet run function cards:entity/look


## Saddle movement
execute store result score #has_saddle var at @n[type=armor_stand,tag=hovered.slot,distance=..100,tag=id] if entity @n[tag=card.entity,tag=id,tag=has_saddle,distance=..1.5]
execute if score #has_saddle var matches 1 if score @s speed >= @n[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance unless score @n[type=armor_stand,tag=hovered.slot,tag=id,limit=1] distance matches 0 run team join yellow @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=friendly,tag=id]


## Calculate potential attack
function main:player/raycast/display/attack/reset
execute at @e[type=armor_stand,tag=selected,tag=id] run tag @n[tag=card.entity,tag=id,distance=..100] add attacker
execute at @e[type=armor_stand,tag=hovered.slot,tag=hostile,tag=id,team=orange] run tag @n[tag=attackable,tag=id,distance=..100] add target
function main:player/raycast/selected/display/attack

function main:player/raycast/display/attack/display