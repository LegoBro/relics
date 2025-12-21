## give xp based on how many huts are around

scoreboard players set #xp var 0
execute as @e[type=armor_stand,tag=witch_hut,tag=id] at @s if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add #xp var 2
scoreboard players operation @s saturation += #xp var

playsound minecraft:block.brewing_stand.brew master @s