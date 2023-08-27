## Start the tutorial
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.5"}]
execute as @a[tag=id] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=id,tag=tut.draw,limit=1]
tag @s add halt
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
