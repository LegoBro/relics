# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.sculk_shrieker","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#018a73","translate":"card.sculk_shrieker"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 7","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.sculk_shrieker.lore.0","color":"white","italic":false},{"translate":"card.sculk_shrieker.lore.1","color":"white","italic":false},{"translate":"card.sculk_shrieker.lore.2","color":"white","italic":false},{"translate":"card.sculk_shrieker.lore.3","color":"white","italic":false},{"translate":"card.sculk_shrieker.lore.4","color":"white","italic":false}]}}}]
summon armor_stand ~ ~1 ~ {CustomName:{"translate":"card.sculk_shrieker"},Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["new","get_id","id","card","sculk_shrieker","card.building","card.defend","attackable"],Team:"green",data:{path:"consumable/defend/sculk_shrieker"}}
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
scoreboard players remove @s saturation 7
function cards:consumable/defend/sculk_shrieker/activate
function main:player/use_card/store