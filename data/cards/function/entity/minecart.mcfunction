scoreboard players operation #z var = @s z
execute as @e[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,tag=!filled] at @s if score @s z = #z var run function cards:entity/minecart/success

