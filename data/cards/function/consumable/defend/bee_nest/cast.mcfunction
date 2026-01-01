# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.bee_nest","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.bee_nest"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.bee_nest.lore.0","color":"white","italic":false},{"translate":"card.bee_nest.lore.1","color":"white","italic":false},{"translate":"card.bee_nest.lore.2","color":"white","italic":false},{"translate":"card.bee_nest.lore.3","color":"white","italic":false}]}}}]
summon armor_stand ~ ~1 ~ {CustomName:{"translate":"card.bee_nest"},Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["new","get_id","id","card","bee_nest","card.building","card.defend","attackable"],Team:"green",data:{path:"consumable/defend/bee_nest"}}
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add block
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
scoreboard players operation @n[tag=get_id] id = game.id var
scoreboard players set @n[tag=get_id] health 3
scoreboard players set @n[tag=get_id] maxHealth 3
scoreboard players set @n[tag=get_id] armor 1
tag @n[tag=get_id] add fire_proof
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 6
function cards:consumable/defend/bee_nest/activate
function main:player/use_card/store