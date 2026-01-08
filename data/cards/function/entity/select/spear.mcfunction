## Entity has spear, +1 range
# Distance = 2 is always the way it is I guess
execute as @e[tag=board,tag=id,distance=..100,tag=filled] if score @s distance matches ..2 run item replace entity @s[tag=hostile] armor.head with book[item_model="cell_state/attack"]