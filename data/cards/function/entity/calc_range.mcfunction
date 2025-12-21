## Does everything needed for targeted entity to calculate range
scoreboard players operation #entity_range var = @s range

## blindness effects
execute if score @s blindness matches 1.. run scoreboard players remove @s range 2

## Cleanup if less than 0
execute if score #entity_range var matches ..-1 run scoreboard players set #entity_range var 0
