## give xp based on how many huts are around

scoreboard players set #xp var 0
execute as @e[type=armor_stand,tag=enchantment_table,tag=id,distance=..100] at @s if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add #xp var 1
scoreboard players operation @s saturation += #xp var

playsound block.enchantment_table.use master @s