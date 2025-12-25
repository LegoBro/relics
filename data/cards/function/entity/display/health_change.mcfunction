## Display health change (- #damage var means healing)
scoreboard players operation #display var = #damage var
scoreboard players operation #display var *= #-1 var


execute if score #display var matches 1.. run data merge block 0 1 1 {front_text:{messages:[[{"text":"+","color":"green"},{"score":{"name":"#display","objective":"var"},"color":"green"},{"translate":"♥","color":"white","bold":false}], {"text":""}, {"text":""}, {"text":""}], has_glowing_text: false, color: "black"}}
execute if score #display var matches ..-1 run data merge block 0 1 1 {front_text:{messages:[[{"text":"","color":"red"},{"score":{"name":"#display","objective":"var"},"color":"red"},{"translate":"♥","color":"white","bold":false}], {"text":""}, {"text":""}, {"text":""}], has_glowing_text: false, color: "black"}}

#execute unless score #armor var matches 1.. run data merge block 0 1 1 {front_text:{messages:[{"text":""}, {"text":""}, {"text":""}, [{"nbt":"Text1","block":"0 1 1","interpret":true},{"nbt":"Text2","block":"0 1 1","interpret":true}]], has_glowing_text: false, color: "black"}}
#execute if score #armor var matches 1.. run data merge block 0 1 1 {front_text:{messages:[{"text":""}, {"text":""}, {"text":""}, [{"nbt":"Text3","block":"0 1 1","interpret":true},{"nbt":"Text1","block":"0 1 1","interpret":true},{"nbt":"Text2","block":"0 1 1","interpret":true}]], has_glowing_text: false, color: "black"}}

#summon area_effect_cloud ~ ~2.5 ~ {CustomNameVisible:1b,Duration:5,Tags:["get_id","id","rename"]}
#scoreboard players operation @e[tag=get_id] id = game.id var
execute as @e[type=area_effect_cloud,tag=rename,tag=id,limit=1,sort=nearest,tag=get_id] run data modify entity @s CustomName set from block 0 1 1 front_text.messages[0]
#tag @e[tag=get_id] remove get_id

