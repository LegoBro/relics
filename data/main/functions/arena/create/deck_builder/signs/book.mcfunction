## Gets a book
execute if entity @s[tag=!cheater] run tellraw @a {"translate":"cheater","color":"light_purple"}
execute if entity @s[tag=!cheater] run playsound minecraft:block.end_portal.spawn master @a
tag @s add cheater
