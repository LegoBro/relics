## Start the tutorial
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.36"}]
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
execute as @e[type=armor_stand,tag=id,tag=board,tag=block] at @s run function cards:consumable/defend/cobblestone/mine
execute as @e[type=armor_stand,tag=board,tag=id] run function main:board/cell/display
execute at @e[type=armor_stand,tag=board.player.1,tag=id] run clone 15 0 1 15 0 1 ~ ~-2 ~
