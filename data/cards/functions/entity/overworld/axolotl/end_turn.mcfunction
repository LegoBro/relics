## If less than full health, turn invis
scoreboard players set #heal var 1
execute if entity @s[tag=play_dead] run function cards:entity/heal
execute if score @s[tag=!play_dead] health < @s maxHealth run function cards:entity/overworld/axolotl/play_dead

execute if score @s[tag=play_dead] health < @s maxHealth run scoreboard players add @s slowness 1
execute if score @s[tag=play_dead] health < @s maxHealth run scoreboard players add @s invisibility 1
execute if score @s[tag=play_dead] health < @s maxHealth run scoreboard players add @s weakness 1
execute if score @s[tag=play_dead] health < @s maxHealth run scoreboard players add @s blindness 1

execute if score @s[tag=play_dead] health >= @s maxHealth run tag @s remove play_dead
