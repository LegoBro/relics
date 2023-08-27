## Start the tutorial
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.6"}]
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
execute as @e[type=armor_stand,tag=board,tag=id] at @s if score @s z matches 1..5 unless score @s x matches 2 run function cards:consumable/defend/cobblestone/tut_place
execute as @e[type=armor_stand,tag=board,tag=id] run function main:board/cell/display
