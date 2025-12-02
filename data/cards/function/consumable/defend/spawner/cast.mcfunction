# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.spawner","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:['','[{\"translate\":\"cost\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 7\",\"italic\":false,\"color\":\"white\"}]','{\"text\":\"\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.spawner.lore.0\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.spawner.lore.1\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.spawner.lore.2\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.spawner.lore.3\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.spawner.lore.4\",\"color\":\"white\",\"italic\":false}'],Name:\"{\\\"translate\\\":\\\"card.spawner\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}]
summon armor_stand ~ ~1 ~ {CustomName:'{"translate":"card.spawner"}',Invisible:1b,PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","spawner","card.building","card.defend","attackable"],Team:"green"}
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add block
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
scoreboard players operation @e[tag=get_id,limit=1,sort=nearest] id = game.id var
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] health 5
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] maxHealth 5
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] armor 1
tag @e[tag=get_id,limit=1,sort=nearest] add fire_proof
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 7
function cards:consumable/defend/spawner/activate
function main:player/use_card/store