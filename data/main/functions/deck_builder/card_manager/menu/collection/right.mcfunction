## Right
scoreboard players add @s menu 1
scoreboard players set @s[scores={menu=4..8}] menu 0
scoreboard players set @s[scores={menu=14..18}] menu 10
scoreboard players set @s[scores={menu=24..28}] menu 20
scoreboard players set @s[scores={menu=34..38}] menu 30
function main:deck_builder/card_manager/update/collection
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 2