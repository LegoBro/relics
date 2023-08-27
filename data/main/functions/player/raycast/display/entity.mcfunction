## Displays entity traits

# shield = 🛡
# Heart ♥
# Attack 🗡

scoreboard players operation #health var = @s health
scoreboard players operation #maxHealth var = @s maxHealth
scoreboard players operation #armor var = @s armor

scoreboard players operation #attack var = @s attack

scoreboard players operation #speed var = @s speed
scoreboard players operation #range var = @s range

# Extra display information for entities
execute if score #range var matches 2.. if entity @s[tag=building.targets] run scoreboard players add #attack var 1

execute if score @s speed_pot matches 1.. run scoreboard players add #speed var 2
execute if score @s slowness matches 1.. run scoreboard players remove #speed var 2

execute if score @s strength matches 1.. if score @s range matches ..1 run scoreboard players add #attack var 3
execute if score @s weakness matches 1.. if score @s range matches ..1 run scoreboard players remove #attack var 4

execute if score @s blindness matches 1.. run scoreboard players remove #range var 2

execute if score #speed var matches ..-1 run scoreboard players set #speed var 0
execute if score #range var matches ..-1 run scoreboard players set #range var 0
execute if score #attack var matches ..-1 run scoreboard players set #attack var 0

#data merge block 0 1 1 {Text1:'[{"score":{"name":"#health","objective":"var"},"color":"red","bold":true},{"text":"/","color":"red","bold":false},{"score":{"name":"#maxHealth","objective":"var"},"color":"red","bold":true},{"translate":"♥","color":"white","bold":false},{"text":" "}]'}
#data merge block 0 1 1 {Text2:'[{"score":{"name":"#attack","objective":"var"},"color":"dark_red","bold":true},{"translate":"🗡","color":"white","bold":false},{"text":" "}]'}
#data merge block 0 1 1 {Text3:'[{"score":{"name":"#armor","objective":"var"},"color":"gray","bold":true},{"translate":"🛡","color":"white","bold":false},{"text":" "}]'}
#execute unless score #armor var matches 1.. run data merge block 0 1 1 {Text4:'[{"nbt":"Text1","block":"0 1 1","interpret":true},{"nbt":"Text2","block":"0 1 1","interpret":true}]'}
#execute if score #armor var matches 1.. run data merge block 0 1 1 {Text4:'[{"nbt":"Text3","block":"0 1 1","interpret":true},{"nbt":"Text1","block":"0 1 1","interpret":true},{"nbt":"Text2","block":"0 1 1","interpret":true}]'}

#summon area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Particle:"ash",Duration:10000,Tags:["get_id","id","rename","display_health"]}
#scoreboard players operation @e[tag=get_id] id = game.id var
#execute as @e[type=area_effect_cloud,tag=rename,tag=id,limit=1,sort=nearest,tag=get_id] run data modify entity @s CustomName set from block 0 1 1 Text4
#tag @e[tag=get_id] remove get_id

#title @p actionbar [{"text":"#count: "},{"score":{"name":"#count","objective":"var"}}]
