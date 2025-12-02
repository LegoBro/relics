## Items
tag @s remove display_delay
execute if score @s display matches ..-1 run scoreboard players set @s display 10
execute if score @s display matches 11.. run scoreboard players set @s display 0

# Default
execute if score @s display matches 0 run item replace entity @s container.0 with paper{CustomModelData:0}
# Attack
execute if score @s display matches 1 run item replace entity @s container.0 with paper{CustomModelData:1}
# Defend
execute if score @s display matches 2 run item replace entity @s container.0 with paper{CustomModelData:2}
# Buff
execute if score @s display matches 3 run item replace entity @s container.0 with paper{CustomModelData:3}
# Nether
execute if score @s display matches 4 run item replace entity @s container.0 with paper{CustomModelData:4}
# End
execute if score @s display matches 5 run item replace entity @s container.0 with paper{CustomModelData:5}
# Aquatic
execute if score @s display matches 6 run item replace entity @s container.0 with paper{CustomModelData:6}
# Village and Pillage
execute if score @s display matches 7 run item replace entity @s container.0 with paper{CustomModelData:7}
# Cards and Cliffs update
execute if score @s display matches 8 run item replace entity @s container.0 with paper{CustomModelData:8}
# Deep Deck Update
execute if score @s display matches 9 run item replace entity @s container.0 with paper{CustomModelData:9}
# Tales and Triumphs Update
execute if score @s display matches 10 run item replace entity @s container.0 with paper{CustomModelData:10}

data merge entity @s[tag=shop.display.left] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]}}
data merge entity @s[tag=shop.display.center] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]}}
data merge entity @s[tag=shop.display.right] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-0.5f],scale:[1f,1f,1f]}}