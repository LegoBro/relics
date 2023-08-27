scoreboard players add @s menu 10
execute if score @s menu matches 40.. run scoreboard players remove @s menu 40
function main:deck_builder/card_manager/update/collection
playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 0