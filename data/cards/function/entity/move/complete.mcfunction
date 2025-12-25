## Completes the movement, cleaning up the entity for tags and running unique conditions


## Lunging Damage Check - can't be from a normal attack
execute if entity @s[tag=lunging,tag=!target] run function cards:entity/move/lunging


## Cleanup
tag @s remove moving