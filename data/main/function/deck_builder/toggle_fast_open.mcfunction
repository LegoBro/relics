## Toggles fast open
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2
execute store result score #fast_open_test var if entity @s[tag=fast_open]

execute if score #fast_open_test var matches 0 run tag @s add fast_open
execute if score #fast_open_test var matches 1 run tag @s remove fast_open

function main:deck_builder/card_manager/update/decks