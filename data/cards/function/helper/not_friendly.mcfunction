## Convert target entity into not friendly
execute as @n[type=armor_stand,tag=board,tag=id,distance=..1.5] run function cards:helper/hostile
team join red @s
tp @s ~ ~ ~ 180 ~
#say test
