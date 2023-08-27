## Villager to Witch by lightning

execute store result score #friendly var if entity @e[type=armor_stand,tag=board,tag=id,tag=friendly,limit=1,sort=nearest,distance=..1.5]
kill @s
execute positioned ~ ~ ~ run function cards:entity/overworld/witch/summon
execute unless score #friendly var matches 1 as @e[type=witch,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly
