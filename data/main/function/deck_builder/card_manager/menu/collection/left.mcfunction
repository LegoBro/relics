## Left
scoreboard players remove @s menu 1
scoreboard players set @s[scores={menu=..-1}] menu 3
scoreboard players set @s[scores={menu=9}] menu 13
scoreboard players set @s[scores={menu=19}] menu 23
scoreboard players set @s[scores={menu=29}] menu 33
function main:deck_builder/card_manager/update/collection
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 2