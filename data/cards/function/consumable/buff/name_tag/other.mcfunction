
scoreboard players operation #health var = @s health
scoreboard players operation #attack var = @s attack

scoreboard players operation @s attack = #health var
scoreboard players operation @s health = #attack var


data merge entity @s {CustomName:'{"text":"Dinnerbone"}'}
