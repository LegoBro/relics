## do fancy stuff because of entity stuff
function main:player/raycast/display/attack/reset

## Sets value of damage - is heal
scoreboard players set #undead var 2
scoreboard players set #normal var -1

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~4 ~ ~ as @n[tag=card.entity,tag=id,distance=..1.5] run function cards:consumable/attack/splash_damage_potion/heal_harm_display
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~-4 ~ ~ as @n[tag=card.entity,tag=id,distance=..1.5] run function cards:consumable/attack/splash_damage_potion/heal_harm_display
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~4 as @n[tag=card.entity,tag=id,distance=..1.5] run function cards:consumable/attack/splash_damage_potion/heal_harm_display
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~-4 as @n[tag=card.entity,tag=id,distance=..1.5] run function cards:consumable/attack/splash_damage_potion/heal_harm_display

scoreboard players set #undead var 3
scoreboard players set #normal var -2

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @n[tag=card.entity,tag=id,distance=..1.5] run function cards:consumable/attack/splash_damage_potion/heal_harm_display

function main:player/raycast/display/attack/display