# Casts the consumable card
tellraw @a[tag=id] {"translate":"cast.use",color:green,"with":[{"selector":"@s"},{"underlined":true,"translate":"card.targets","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.targets"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 9","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.targets.lore.0","color":"white","italic":false},{"translate":"card.targets.lore.1","color":"white","italic":false},{"translate":"card.targets.lore.2","color":"white","italic":false}]}}}]}
summon armor_stand ~ ~1 ~ {CustomName:{"translate":"card.targets"},Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["new","get_id","id","card","targets","card.building","card.defend","attackable"],Team:"green",data:{path:"consumable/defend/targets"}}
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add block
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
scoreboard players operation @n[tag=get_id] id = game.id var
scoreboard players set @n[tag=get_id] health 4
scoreboard players set @n[tag=get_id] maxHealth 4
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 9
function cards:consumable/defend/targets/activate
function main:player/use_card/store