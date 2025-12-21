## Hovers for the player

effect give @e[type=armor_stand,tag=hovered.slot,tag=id] minecraft:glowing 1 0 true

execute store result score #placement var run data get entity @s SelectedItem.components."minecraft:custom_data".card.placement
execute if score #placement var matches 0 run function main:player/raycast/use/display/anywhere
execute if score #placement var matches 1 run function main:player/raycast/use/display/anywhere_blocked
execute if score #placement var matches 2 run function main:player/raycast/use/display/anywhere_unfilled
execute if score #placement var matches 3 run function main:player/raycast/use/display/anywhere_filled
execute if score #placement var matches 4 run function main:player/raycast/use/display/anywhere_entity
execute if score #placement var matches 5 run function main:player/raycast/use/display/anywhere_friendly
execute if score #placement var matches 6 run function main:player/raycast/use/display/anywhere_friendly_moved
execute if score #placement var matches 7 run function main:player/raycast/use/display/anywhere_friendly_ranged
execute if score #placement var matches 8 run function main:player/raycast/use/display/anywhere_friendly_not_ranged
execute if score #placement var matches 9 run function main:player/raycast/use/display/anywhere_piglin
execute if score #placement var matches 10 run function main:player/raycast/use/display/front
execute if score #placement var matches 11 run function main:player/raycast/use/display/middle_unfilled
execute if score #placement var matches 12 run function main:player/raycast/use/display/emerald
execute if score #placement var matches 13 run function main:player/raycast/use/display/not_enemy_filled
execute if score #placement var matches 14 run function main:player/raycast/use/display/not_own_filled
execute if score #placement var matches 15 run function main:player/raycast/use/display/minecart
execute if score #placement var matches 16 run function main:player/raycast/use/display/undead
execute if score #placement var matches 17 run function main:player/raycast/use/display/not_aquatic

# Override for discard
execute as @e[type=armor_stand,tag=hovered.slot,tag=discard_pile,tag=id] run team join red @s

execute if entity @s[tag=player.1] unless entity @s[scores={binding_timer=1..}] as @e[type=armor_stand,tag=hovered.slot,tag=discard_pile,tag=discard.player.1,tag=id] run team join purple @s
execute if entity @s[tag=player.2] unless entity @s[scores={binding_timer=1..}] as @e[type=armor_stand,tag=hovered.slot,tag=discard_pile,tag=discard.player.2,tag=id] run team join purple @s


execute store result score #id var run data get entity @s SelectedItem.components."minecraft:custom_data".card.id

execute unless score @s rightClick matches 1.. at @e[type=armor_stand,tag=hovered.slot,team=green,tag=id,limit=1,sort=nearest] run function cards:hover

execute if score @s rightClick matches 1.. at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,sort=nearest] run function main:player/raycast/use/click
