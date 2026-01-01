# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.gilded_blackstone","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.gilded_blackstone"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.gilded_blackstone.lore.0","color":"white","italic":false},{"translate":"card.gilded_blackstone.lore.1","color":"white","italic":false},{"translate":"card.gilded_blackstone.lore.2","color":"white","italic":false}]}}}]
summon armor_stand ~ ~1 ~ {CustomName:{"translate":"card.gilded_blackstone"},Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["new","get_id","id","card","gilded_blackstone","card.building","card.defend","attackable"],Team:"green",data:{path:"consumable/defend/gilded_blackstone"}}
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add block
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
scoreboard players operation @n[tag=get_id] id = game.id var
scoreboard players set @n[tag=get_id] health 3
scoreboard players set @n[tag=get_id] maxHealth 3
tag @n[tag=get_id] add fire_proof
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 3
function cards:consumable/defend/gilded_blackstone/activate
function main:player/use_card/store