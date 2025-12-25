## Gets every attribute for the cell running the command
function main:board/cell/get/pos

execute store result score #draw_pile var if entity @s[tag=draw_pile]
execute store result score #filled var if entity @s[tag=filled]
execute store result score #blocked var if entity @s[tag=blocked]