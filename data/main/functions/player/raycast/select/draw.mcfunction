## Draw a card you baffoon
execute store result score #cards var run clear @s minecraft:carrot_on_a_stick{card:{}} 0
execute unless score #cards var < #set.handSize var run function main:player/draw_card/fail
execute if score #cards var < #set.handSize var unless score @s saturation matches 2.. run function main:player/draw_card/fail
execute if entity @s[tag=player.1] if score #cards var < #set.handSize var if score @s saturation matches 2.. at @e[type=armor_stand,tag=board.player.1,tag=id] run function main:player/draw_card
execute if entity @s[tag=player.2] if score #cards var < #set.handSize var if score @s saturation matches 2.. at @e[type=armor_stand,tag=board.player.2,tag=id] run function main:player/draw_card
