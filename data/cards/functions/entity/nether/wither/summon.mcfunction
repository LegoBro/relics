#Summons the entity (generated)
summon wither ~ ~1 ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","wither","card.entity","card.nether","attackable"],Team:"green"}
execute if entity @s[tag=player.2] run tp @e[tag=get_id,tag=id,limit=1] ~ ~1 ~ 180 ~
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly
scoreboard players operation @e[tag=get_id,limit=1,sort=nearest] id = game.id var
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] health 10
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] maxHealth 10
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] attack 1
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] speed 1
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] range 3
tag @e[tag=get_id,limit=1,sort=nearest] add fire_proof
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] armor 0
scoreboard players set @e[tag=get_id,limit=1,sort=nearest] apply_wither 3
tag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable
tag @e[tag=get_id,limit=1,sort=nearest] add wither_proof
tag @e[tag=get_id,limit=1,sort=nearest] add undead
tellraw @a[tag=id] [{"selector":"@s"},{"text":" spawns "},{"underlined":true,"translate":"card.wither","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:['','[{\"translate\":\"cost\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 20\",\"italic\":false,\"color\":\"white\"},{\"text\":\"        10 \",\"italic\":false,\"color\":\"white\"},{\"translate\":\"health\",\"italic\":false,\"color\":\"white\"}]','[{\"translate\":\"attack\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 1\",\"italic\":false,\"color\":\"white\"},{\"text\":\"        0 \",\"italic\":false,\"color\":\"white\"},{\"translate\":\"armor\",\"italic\":false,\"color\":\"white\"}]','[{\"translate\":\"speed\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 1\",\"italic\":false,\"color\":\"white\"},{\"text\":\"        3 \",\"italic\":false,\"color\":\"white\"},{\"translate\":\"range\",\"italic\":false,\"color\":\"white\"}]','{\"text\":\"\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.wither.lore.0\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.wither.lore.1\",\"color\":\"white\",\"italic\":false}'],Name:\"{\\\"translate\\\":\\\"card.wither\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}]
tag @e[tag=get_id,limit=1] add moving
tag @e[type=armor_stand,tag=board,tag=trap,tag=id,limit=1,distance=..0.5] add destination
execute as @e[type=armor_stand,tag=board,tag=destination] unless entity @e[tag=card.entity,tag=get_id,tag=id,limit=1,sort=nearest,tag=flying] at @s run function cards:consumable/defend/trap/trigger_dict
tag @e[type=armor_stand,tag=id] remove destination
tag @e[tag=get_id] remove moving
tag @e[tag=get_id] remove get_id
scoreboard players remove @s saturation 20
function cards:entity/nether/wither/summon_display
function main:player/use_card/store
scoreboard players add @s play.nether 1