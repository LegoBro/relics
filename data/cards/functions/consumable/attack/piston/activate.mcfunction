## Pushes an entity back

playsound minecraft:block.piston.extend master @a[tag=id] ~ ~ ~ 10 1 1
execute if entity @s[tag=player.1] run scoreboard players set #movement var 1
execute if entity @s[tag=player.2] run scoreboard players set #movement var -1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=attackable,tag=id,limit=1,sort=nearest] run function cards:push

scoreboard players add @p[tag=id,tag=turn] play.piston 1
execute if entity @p[tag=id,tag=turn,advancements={main:quests/piston=false}] if score @s play.piston matches 3.. run advancement grant @s only main:quests/piston