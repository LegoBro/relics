## Sort all the cards in the player's hand by cost
tag @e remove id
scoreboard players operation #id var = @s id
execute as @e if score @s id = #id var run tag @s add id
function main:arena/create/deck_builder/store/start
