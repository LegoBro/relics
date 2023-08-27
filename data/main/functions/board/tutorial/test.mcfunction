## Various tests performed to skip stage

execute if score @s tut.spot matches 5 if score @a[tag=id,limit=1] saturation matches ..2 run function main:board/tutorial/dict
execute if score @s tut.spot matches 19 if entity @a[tag=id,limit=1,tag=wait] run function main:board/tutorial/dict
execute if score @s tut.spot matches 23 if entity @e[tag=friendly,tag=id,tag=!movable,limit=1] run function main:board/tutorial/dict
execute if score @s tut.spot matches 28 if entity @a[tag=id,limit=1,tag=wait] run function main:board/tutorial/dict
execute if score @s tut.spot matches 30 if entity @e[tag=friendly,tag=id,tag=!movable,limit=1] run function main:board/tutorial/dict
execute if score @s tut.spot matches 33 if entity @a[tag=id,limit=1,tag=wait] run function main:board/tutorial/dict
execute if score @s tut.spot matches 35 unless entity @e[type=armor_stand,tag=!board.player.2,tag=id,tag=hostile,limit=1] run function main:board/tutorial/dict
execute if score @s tut.spot matches 37 if score @a[tag=id,limit=1] saturation matches ..3 run function main:board/tutorial/dict
execute if score @s tut.spot matches 42 if entity @e[tag=id,limit=1,scores={speed_pot=1..}] run function main:board/tutorial/dict
execute if score @s tut.spot matches 54 unless entity @e[type=armor_stand,tag=board.player.2,tag=filled,tag=hostile,tag=id,limit=1] run function main:board/tutorial/dict
