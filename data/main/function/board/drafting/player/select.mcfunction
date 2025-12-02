## The player has selected a card, add to his deck, and add the other one to the opponents deck (and give him new ones to choose)
# Copy/delete selected cards
function main:player/use_card/draft

# New Cards
execute unless entity @s[tag=id,scores={turnCount=13..}] run function main:board/drafting/cards

scoreboard players add @s turnCount 1
execute if entity @a[tag=id,scores={turnCount=13}] if entity @a[tag=id,scores={turnCount=14..}] run function main:board/drafting/begin_game
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1
