## Hovers for the player

effect give @e[type=armor_stand,tag=hovered.slot,tag=id] minecraft:glowing 1 0 true

function cards:placements

# Override for discard
execute as @e[type=armor_stand,tag=hovered.slot,tag=discard_pile,tag=id] run team join red @s

execute if entity @s[tag=player.1] unless entity @s[scores={binding_timer=1..}] as @e[type=armor_stand,tag=hovered.slot,tag=discard_pile,tag=discard.player.1,tag=id] run team join purple @s
execute if entity @s[tag=player.2] unless entity @s[scores={binding_timer=1..}] as @e[type=armor_stand,tag=hovered.slot,tag=discard_pile,tag=discard.player.2,tag=id] run team join purple @s


execute store result score #id var run data get entity @s SelectedItem.components."minecraft:custom_data".card.id

execute unless score @s rightClick matches 1.. at @e[type=armor_stand,tag=hovered.slot,team=green,tag=id,limit=1,sort=nearest] run function cards:hover

execute if score @s rightClick matches 1.. at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1,sort=nearest] run function main:player/raycast/use/click
