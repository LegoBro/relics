## Display health change (- #damage var means healing)
execute if score #fire var matches 1.. run data merge block 0 1 1 {front_text:{messages:['[{"score":{"name":"#fire","objective":"var"},"color":"gold"},{"translate":"fire","color":"white","bold":false}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
execute if score #wither var matches 1.. run data merge block 0 1 1 {front_text:{messages:['{"text":""}', '[{"score":{"name":"#wither","objective":"var"},"color":"gray"},{"translate":"wither","color":"white","bold":false}]', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
execute if score #poison var matches 1.. run data merge block 0 1 1 {front_text:{messages:['{"text":""}', '{"text":""}', '[{"score":{"name":"#poison","objective":"var"},"color":"dark_green"},{"translate":"poison","color":"white","bold":false}]', '{"text":""}'], has_glowing_text: false, color: "black"}}
execute if score #fire var matches ..0 run data merge block 0 1 1 {front_text:{messages:['[{"text":""}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
execute if score #wither var matches ..0 run data merge block 0 1 1 {front_text:{messages:['{"text":""}', '[{"text":""}]', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
execute if score #poison var matches ..0 run data merge block 0 1 1 {front_text:{messages:['{"text":""}', '{"text":""}', '[{"text":""}]', '{"text":""}'], has_glowing_text: false, color: "black"}}

data merge block 0 1 1 {front_text:{messages:['{"text":""}', '{"text":""}', '{"text":""}', '[{"nbt":"Text1","block":"0 1 1","interpret":true},{"nbt":"Text2","block":"0 1 1","interpret":true},{"nbt":"Text3","block":"0 1 1","interpret":true}]'], has_glowing_text: false, color: "black"}}

summon area_effect_cloud ~ ~2.5 ~ {CustomNameVisible:1b,Duration:5,Tags:["get_id","id","rename"]}
scoreboard players operation @e[tag=get_id] id = game.id var
execute as @e[type=area_effect_cloud,tag=rename,tag=id,limit=1,sort=nearest,tag=get_id] run data modify entity @s CustomName set from block 0 1 1 front_text.messages[3]
tag @e[tag=get_id] remove get_id



#summon area_effect_cloud ~ ~3 ~ {CustomNameVisible:1b,Duration:5,CustomName:{"text":"☠","color":"dark_red"}}
