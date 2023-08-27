#Summons the entity (generated)
summon tnt ~ ~1 ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","tnt","card.entity","card.attack","attackable"],Team:"green",Fuse:10000}
execute if entity @s[tag=player.2] run tp @e[tag=get_id,tag=id,limit=1] ~ ~1 ~ 180 ~
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
scoreboard players operation @e[tag=get_id,limit=1,sort=nearest] id = game.id var
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] health 3
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] maxHealth 3
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] attack 5
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] speed 0
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] range 0
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] armor 0
tag @e[tag=get_id,limit=1,sort=nearest] add special_attack
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
tag @e[tag=get_id,limit=1,sort=nearest] add unselectable
tag @e[tag=get_id,limit=1,sort=nearest] add unbuffable
tellraw @a[tag=id] [{"selector":"@s"},{"text":" spawns "},{"underlined":true,"translate":"card.tnt","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:['','[{\"translate\":\"cost\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 6\",\"italic\":false,\"color\":\"white\"},{\"text\":\"        3 \",\"italic\":false,\"color\":\"white\"},{\"translate\":\"health\",\"italic\":false,\"color\":\"white\"}]','[{\"translate\":\"attack\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 5\",\"italic\":false,\"color\":\"white\"},{\"text\":\"        0 \",\"italic\":false,\"color\":\"white\"},{\"translate\":\"armor\",\"italic\":false,\"color\":\"white\"}]','[{\"translate\":\"speed\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 0\",\"italic\":false,\"color\":\"white\"},{\"text\":\"        0 \",\"italic\":false,\"color\":\"white\"},{\"translate\":\"range\",\"italic\":false,\"color\":\"white\"}]','{\"text\":\"\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.tnt.lore.0\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.tnt.lore.1\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.tnt.lore.2\",\"color\":\"white\",\"italic\":false}'],Name:\"{\\\"translate\\\":\\\"card.tnt\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}]
tag @e[tag=get_id,limit=1] add moving
tag @e[type=armor_stand,tag=board,tag=trap,tag=id,limit=1,distance=..0.5] add destination
execute as @e[type=armor_stand,tag=board,tag=destination] unless entity @e[tag=card.entity,tag=get_id,tag=id,limit=1,sort=nearest,tag=flying] at @s run function cards:consumable/defend/trap/trigger_dict
tag @e[type=armor_stand,tag=id] remove destination
tag @e[tag=get_id] remove moving
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 6
function cards:entity/attack/tnt/summon_display
function main:player/use_card/store
scoreboard players add @s play.attack 1