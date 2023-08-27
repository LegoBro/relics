## Ticks drafting players
title @s times 0 10 0
title @s subtitle {"translate":"game.draft","color":"gold"}
title @s title ""
execute if score @s[nbt=!{Inventory:[{Slot:-106b}]}] rightClick matches 1.. run function main:board/drafting/player/select
scoreboard players reset @s rightClick
