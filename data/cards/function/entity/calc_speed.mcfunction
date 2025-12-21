## Does everything needed for targeted entity to calculate speed
scoreboard players operation #entity_speed var = @s speed

## Speed and slowness effects
execute if score @s speed_pot matches 1.. run scoreboard players add #entity_speed var 2
execute if score @s slowness matches 1.. run scoreboard players remove #entity_speed var 2

## Cleanup if less than 0
execute if score #entity_speed var matches ..-1 run scoreboard players set #entity_speed var 0
