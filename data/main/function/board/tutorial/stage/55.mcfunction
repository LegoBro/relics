## Start the tutorial
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.55"}]
execute as @a[tag=id] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 2 1
advancement grant @a[tag=id,tag=!t.skip] only main:quests/tutorial
advancement grant @a[tag=id,tag=t.skip] only main:quests/practice
