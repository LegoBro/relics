playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0
tellraw @s {"translate":"draw.fail","color":"red"}
scoreboard players set @s rightClick 0
return fail