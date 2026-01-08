## Sets a hero at the start
summon mannequin ~ ~1 ~ {CustomName:"Hero",Silent:1b,Invulnerable:1b,Tags:["new","get_id","id","card","steve","card.entity","card.hero","attackable"],Team:"green",data:{path:"entity/hero/steve"},profile:"MHF_Steve",equipment:{mainhand:{id:"minecraft:iron_pickaxe",count:1}}}
execute if entity @s[tag=board.player.2] run tp @e[tag=get_id,tag=id,limit=1] ~ ~1 ~ 180 ~
tag @s add filled
execute if score #friendly var matches 1 run tag @s add friendly
execute if score #friendly var matches 0 run tag @s add hostile
scoreboard players operation @e[tag=get_id,limit=1,sort=nearest] id = game.id var
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] health 20
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] maxHealth 20
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] attack 1
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] speed 0
scoreboard players set @e[tag=card.hero,tag=get_id,limit=1,sort=nearest] range 1
scoreboard players operation @e[tag=get_id] id = game.id var
tag @e[tag=card.hero,tag=get_id] remove get_id
