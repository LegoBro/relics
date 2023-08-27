## Start the tutorial
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.33"}]
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
tag @s add halt
execute as @e[type=armor_stand,tag=board,tag=id] at @s if score @s z matches 1 if score @s x matches 2 run function cards:consumable/defend/cobblestone/tut_place
scoreboard players set @a[tag=id] saturation 0
