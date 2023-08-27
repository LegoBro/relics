## Force next display
execute if entity @e[tag=display_delay] run return 1

#summon item_display 10 202.25 24 {Tags:["shop.display.main","shop.display","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]}}

# New Left
scoreboard players operation @e[tag=shop.display.new_right,limit=1] display = @e[tag=shop.display.right] display
scoreboard players add @e[tag=shop.display.new_right,limit=1] display 1
execute as @e[tag=shop.display.new_right,limit=1] run function main:lobby/shop/display/item
data merge entity @e[tag=shop.display.new_right,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-0.5f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}
#item replace entity @e[tag=shop.display.left] container.0 with air

# Right to center
data modify entity @e[tag=shop.display.right_transition,limit=1] item set from entity @e[tag=shop.display.right,limit=1] item
data merge entity @e[tag=shop.display.right_transition,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]},start_interpolation:0,interpolation_duration:3}
item replace entity @e[tag=shop.display.right] container.0 with air

# Center to Left
data modify entity @e[tag=shop.display.center_transition,limit=1] item set from entity @e[tag=shop.display.center,limit=1] item
data merge entity @e[tag=shop.display.center_transition,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}
item replace entity @e[tag=shop.display.center] container.0 with air

# Destroy Left
data modify entity @e[tag=shop.display.left_transition,limit=1] item set from entity @e[tag=shop.display.left,limit=1] item
data merge entity @e[tag=shop.display.left_transition,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[0f,0f,0f]},start_interpolation:0,interpolation_duration:3}
item replace entity @e[tag=shop.display.left] container.0 with air

scoreboard players add #shop display 1
tag @e[tag=shop.display.center] add display_delay
schedule function main:lobby/shop/display 4t

playsound block.bamboo_wood.step master @s ~ ~ ~ 1 2