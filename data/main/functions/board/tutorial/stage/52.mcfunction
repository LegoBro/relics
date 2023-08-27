## Start the tutorial
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.52"}]
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
execute as @a[tag=id] at @e[type=armor_stand,tag=board.player.1,tag=id] run function main:arena/create/arena/load_deck
