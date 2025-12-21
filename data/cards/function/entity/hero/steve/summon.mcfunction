#Summons the entity (generated)
summon armor_stand ~ ~1 ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","steve","card.entity","card.hero","attackable"],Team:"green",ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{mainhand:{id:"minecraft:iron_pickaxe",count:1},feet:{id:"minecraft:leather_boots",count:1b,components:{"minecraft:dyed_color":3682347}},legs:{id:"minecraft:leather_leggings",count:1b,components:{"minecraft:dyed_color":2239935}},chest:{id:"minecraft:leather_chestplate",count:1b,components:{"minecraft:dyed_color":1356287}},head:{id:"minecraft:player_head",count:1b}}}
execute if entity @s[tag=player.2] run tp @e[tag=get_id,tag=id,limit=1] ~ ~1 ~ 180 ~
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
scoreboard players operation @n[tag=get_id] id = game.id var
scoreboard players set @n[tag=get_id] health 15
scoreboard players set @n[tag=get_id] maxHealth 15
scoreboard players set @n[tag=get_id] attack 1
scoreboard players set @n[tag=get_id] speed 0
scoreboard players set @n[tag=get_id] range 1
scoreboard players set @n[tag=get_id] armor 0
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
tellraw @a[tag=id] [{"selector":"@s"},{"text":" spawns "},{"underlined":true,"translate":"card.steve","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.steve"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"},{"text":"        15 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}],[{"translate":"attack","italic":false,"color":"white"},{"text":" 1","italic":false,"color":"white"},{"text":"        0 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}],[{"translate":"speed","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.steve.lore.0","color":"white","italic":false}]}}}]
tag @e[tag=get_id,limit=1] add moving
tag @e[type=armor_stand,tag=board,tag=trap,tag=id,limit=1,distance=..0.5] add destination
execute as @e[type=armor_stand,tag=board,tag=destination] unless entity @e[tag=card.entity,tag=get_id,tag=id,limit=1,sort=nearest,tag=flying] at @s run function cards:consumable/defend/trap/trigger_dict
tag @e[type=armor_stand,tag=id] remove destination
tag @e[tag=get_id] remove moving
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 0
function cards:entity/hero/steve/summon_display
function main:player/use_card/store
scoreboard players add @s play.hero 1