## Calculate Attack of entity
scoreboard players operation #attack var = @s attack

execute if score @s strength matches 1.. if score @s range matches ..1 run scoreboard players add #attack var 3
execute if score @s weakness matches 1.. if score @s range matches ..1 run scoreboard players remove #attack var 4

# DOTs
scoreboard players operation #fire var = @s apply_fire
scoreboard players operation #poison var = @s apply_poison
scoreboard players operation #wither var = @s apply_wither

execute if score #attack var matches ..-1 run scoreboard players set #attack var 0