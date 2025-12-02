## Display time left to the player.

execute if score @s turnTimer matches -300 run title @s subtitle "15"
execute if score @s turnTimer matches -300 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0 1

execute if score @s turnTimer matches -200 run title @s subtitle "10"
execute if score @s turnTimer matches -200 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5 1

execute if score @s turnTimer matches -100 run title @s subtitle "5"
execute if score @s turnTimer matches -100 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1 1

execute if score @s turnTimer matches -80 run title @s subtitle "4"
execute if score @s turnTimer matches -80 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.2 1

execute if score @s turnTimer matches -60 run title @s subtitle "3"
execute if score @s turnTimer matches -60 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.4 1

execute if score @s turnTimer matches -40 run title @s subtitle "2"
execute if score @s turnTimer matches -40 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.6 1

execute if score @s turnTimer matches -20 run title @s subtitle "1"
execute if score @s turnTimer matches -20 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.8 1


title @s times 0 20 5
title @s title ""
