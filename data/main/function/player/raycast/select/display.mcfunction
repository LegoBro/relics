## Display for entity/card selection
team join red @s
team join gray @s[tag=filled,tag=in_minecart,tag=friendly]
team join green @s[tag=filled,tag=movable,tag=friendly]
execute if score #player1 var matches 1 run team join purple @s[tag=draw_pile,tag=draw.player.1]
execute if score #player1 var matches 0 run team join purple @s[tag=draw_pile,tag=draw.player.2]
#execute if entity @s[tag=block] at @s run function main:player/raycast/select/adjacent_friends