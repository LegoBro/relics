clear @s carrot_on_a_stick
clear @s[gamemode=adventure]
kill @e[type=item,distance=..10]
item replace entity @s enderchest.1 from entity @s enderchest.0
function main:deck_builder/card_manager/update/store

execute at @e[type=marker,tag=id,tag=deck.builder.ah] run data merge block ~ ~ ~ {Items:[]}
execute at @e[type=marker,tag=id,tag=deck.builder.ah] run data merge block ~1 ~ ~ {Items:[]}