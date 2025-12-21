# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.farmland","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.farmland"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 10","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.farmland.lore.0","color":"white","italic":false},{"translate":"card.farmland.lore.1","color":"white","italic":false},{"translate":"card.farmland.lore.2","color":"white","italic":false}]}}}]
summon armor_stand ~ ~1 ~ {CustomName:{"translate":"card.farmland"},Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["new","get_id","id","card","farmland","card.building","card.defend","attackable"],Team:"green"}
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add block
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
scoreboard players operation @n[tag=get_id] id = game.id var
scoreboard players set @n[tag=get_id] health 4
scoreboard players set @n[tag=get_id] maxHealth 4
tag @n[tag=get_id] add fire_proof
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 10
function cards:consumable/defend/farmland/activate
function main:player/use_card/store