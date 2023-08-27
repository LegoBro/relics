# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.suspicious_sand","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:['','[{\"translate\":\"cost\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 4\",\"italic\":false,\"color\":\"white\"}]','{\"text\":\"\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.suspicious_sand.lore.0\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.suspicious_sand.lore.1\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.suspicious_sand.lore.2\",\"color\":\"white\",\"italic\":false}'],Name:\"{\\\"translate\\\":\\\"card.suspicious_sand\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}]
summon armor_stand ~ ~1 ~ {CustomName:'{"translate":"card.suspicious_sand"}',Invisible:1b,PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","suspicious_sand","card.building","card.defend","attackable"],Team:"green"}
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add block
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
scoreboard players operation @e[tag=get_id,limit=1,sort=nearest] id = game.id var
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] health 3
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] maxHealth 3
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 4
function cards:consumable/defend/suspicious_sand/activate
function main:player/use_card/store