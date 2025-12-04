## Displays the display
execute if score #shop display matches ..-1 run scoreboard players set #shop display 10
execute if score #shop display matches 11.. run scoreboard players set #shop display 0

scoreboard players operation @e[tag=shop.display.center] display = #shop display

scoreboard players operation @e[tag=shop.display.new_left] display = #shop display
scoreboard players remove @e[tag=shop.display.new_left] display 2

scoreboard players operation @e[tag=shop.display.left] display = #shop display
scoreboard players remove @e[tag=shop.display.left] display 1

scoreboard players operation @e[tag=shop.display.right] display = #shop display
scoreboard players add @e[tag=shop.display.right] display 1

scoreboard players operation @e[tag=shop.display.new_left] display = #shop display
scoreboard players add @e[tag=shop.display.new_left] display 2

execute as @e[tag=shop.display,tag=!transition] at @s run function main:lobby/shop/display/item
execute as @e[tag=shop.display,tag=transition] at @s run function main:lobby/shop/display/reset_transition

execute if score #shop display matches 0 run data merge block 10 200 22 {front_text:{messages:[{"text":"Booster Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"20","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 20"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 1 run data merge block 10 200 22 {front_text:{messages:[{"text":"Attack Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"25","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 25"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 2 run data merge block 10 200 22 {front_text:{messages:[{"text":"Defensive Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"25","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 25"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 3 run data merge block 10 200 22 {front_text:{messages:[{"text":"Buffs Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"25","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 25"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 4 run data merge block 10 200 22 {front_text:{messages:[{"text":"Nether Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"25","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 25"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 5 run data merge block 10 200 22 {front_text:{messages:[{"text":"Ender Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"25","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 25"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 6 run data merge block 10 200 22 {front_text:{messages:[{"text":"Aquatic Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"25","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 25"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 7 run data merge block 10 200 22 {front_text:{messages:[{"text":"Village Pack","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"25","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 25"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 8 run data merge block 10 200 22 {front_text:{messages:[{"text":"Cards and C.","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"30","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 30"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 9 run data merge block 10 200 22 {front_text:{messages:[{"text":"Deep Deck","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"40","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 40"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}
execute if score #shop display matches 10 run data merge block 10 200 22 {front_text:{messages:[{"text":"Tales and T.","color":"white","bold":true},{"text":"Purchase for","color":"yellow"},[{"text":"50","color":"gold","click_event":{"action":"run_command","command":"scoreboard players set #price var 50"}},{"text":"$","color":"white"}],{"text":"[Right Click]","color":"dark_green","click_event":{"action":"run_command","command":"function main:lobby/shop/purchase"}}]}}

#summon item_display 10 202.25 24 {Tags:["shop.display.left_transition","transition","shop.display","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:3}
#summon item_display 10 202.25 24 {Tags:["shop.display.center_transition","transition","shop.display","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]},interpolation_duration:3}
#summon item_display 10 202.25 24 {Tags:["shop.display.right_transition","transition","shop.display","display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:3}
