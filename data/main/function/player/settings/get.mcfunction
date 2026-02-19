## Copy player's settings into a file
scoreboard players operation #mode var = @s set.mode
execute if score @s set.time matches 0 run scoreboard players set #timer var -2400
execute if score @s set.time matches 1 run scoreboard players set #timer var -1200

execute unless score @s set.handSize matches 3.. run scoreboard players set @s set.handSize 5
scoreboard players operation #handSize var = @s set.handSize

execute unless score @s set.fatigue matches -200000000.. run scoreboard players set @s set.fatigue -2
scoreboard players operation #fatigue var = @s set.fatigue

execute unless score @s set.hero_hp matches 10.. run scoreboard players set @s set.hero_hp 20
scoreboard players operation #hero_hp var = @s set.hero_hp