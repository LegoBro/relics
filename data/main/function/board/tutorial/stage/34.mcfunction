## Start the tutorial
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.34"}]
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
execute at @e[type=armor_stand,tag=id,tag=board.center] run function cards:entity/overworld/chicken/summon
execute as @e[type=armor_stand,tag=board,tag=id] run function main:board/cell/display
