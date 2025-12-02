## Start the tutorial

#tellraw @a[tag=id] {"text":"YouTube Tutorial","color":"red","clickEvent":{"action":"open_url","value":"https://youtu.be/HYZNcgpcQOc"}}
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.1"}]
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
execute at @e[type=armor_stand,tag=board.player.1,tag=id] run setblock ~ ~-2 ~ air
execute at @e[type=armor_stand,tag=board.player.1,tag=id] run clone 15 0 0 15 0 0 ~ ~-2 ~
scoreboard players set @a[tag=id] saturation 3
