## Sets a hero at the start
summon armor_stand ~ ~1 ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","steve","card.entity","card.hero","attackable"],Team:"green",ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{mainhand:{id:"minecraft:iron_pickaxe",count:1},feet:{id:"minecraft:leather_boots",count:1b,components:{"minecraft:dyed_color":3682347}},legs:{id:"minecraft:leather_leggings",count:1b,components:{"minecraft:dyed_color":2239935}},chest:{id:"minecraft:leather_chestplate",count:1b,components:{"minecraft:dyed_color":1356287}},head:{id:"minecraft:player_head",count:1b}},CustomName:{"text":"Steve"}}
execute if entity @s[tag=board.player.2] run tp @e[tag=get_id,tag=id,limit=1] ~ ~1 ~ 180 ~
tag @s add filled
execute if score #friendly var matches 1 run tag @s add friendly
execute if score #friendly var matches 0 run tag @s add hostile
scoreboard players operation @e[tag=get_id,limit=1,sort=nearest] id = game.id var
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] health 20
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] maxHealth 20
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] attack 1
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] speed 0
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] range 1
scoreboard players operation @e[tag=get_id] id = game.id var
tag @e[tag=card.hero,tag=get_id] remove get_id
