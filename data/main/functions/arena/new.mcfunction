## Gets coordinates for a new location
scoreboard players set #loop var 0

function main:arena/loop
execute positioned -128 150 -128 run summon armor_stand ~ ~ ~ {Tags:["arena.anchor","new"],NoGravity:1b}
scoreboard players operation #loops var = #loop var
execute as @e[type=armor_stand,tag=new,tag=arena.anchor] run scoreboard players operation @s id = #loops var
execute as @e[type=armor_stand,tag=new,tag=arena.anchor] at @s if score #loop var matches 12.. run function main:arena/anchor/position_loop_z
execute as @e[type=armor_stand,tag=new,tag=arena.anchor] at @s if score #loop var matches 1.. run function main:arena/anchor/position_loop_x
execute as @e[type=armor_stand,tag=new,tag=arena.anchor] at @s run function main:arena/delete
execute as @e[type=armor_stand,tag=new,tag=arena.anchor] at @s run setblock ~ ~ ~ structure_block
