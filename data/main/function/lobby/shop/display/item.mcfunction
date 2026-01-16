## Items
tag @s remove display_delay
execute if score @s display matches ..-1 run scoreboard players set @s display 11
execute if score @s display matches 12.. run scoreboard players set @s display 0

# Default
execute if score @s display matches 0 run item replace entity @s container.0 with paper[item_model="card_pack/0"]
# Attack
execute if score @s display matches 1 run item replace entity @s container.0 with paper[item_model="card_pack/1"]
# Defend
execute if score @s display matches 2 run item replace entity @s container.0 with paper[item_model="card_pack/2"]
# Buff
execute if score @s display matches 3 run item replace entity @s container.0 with paper[item_model="card_pack/3"]
# Nether
execute if score @s display matches 4 run item replace entity @s container.0 with paper[item_model="card_pack/4"]
# End
execute if score @s display matches 5 run item replace entity @s container.0 with paper[item_model="card_pack/5"]
# Aquatic
execute if score @s display matches 6 run item replace entity @s container.0 with paper[item_model="card_pack/6"]
# Village and Pillage
execute if score @s display matches 7 run item replace entity @s container.0 with paper[item_model="card_pack/7"]
# Cards and Cliffs update
execute if score @s display matches 8 run item replace entity @s container.0 with paper[item_model="card_pack/8"]
# Deep Deck Update
execute if score @s display matches 9 run item replace entity @s container.0 with paper[item_model="card_pack/9"]
# Tales and Triumphs Update
execute if score @s display matches 10 run item replace entity @s container.0 with paper[item_model="card_pack/10"]
# Aggro Arsenal Update
execute if score @s display matches 11 run item replace entity @s container.0 with paper[item_model="card_pack/11"]

data merge entity @s[tag=shop.display.left] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]}}
data merge entity @s[tag=shop.display.center] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]}}
data merge entity @s[tag=shop.display.right] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-0.5f],scale:[1f,1f,1f]}}