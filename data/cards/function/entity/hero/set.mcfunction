## Sets a hero at the start

summon armor_stand ~ ~1 ~ {PersistanceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","steve","card.entity","card.hero","attackable"],Team:"green",ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3682347}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2239935}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1356287}}},{id:"minecraft:player_head",Count:1b}],CustomName:'{"text":"Steve"}'}
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
