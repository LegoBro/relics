## Deal 1 damage to building, if it's killed, place silverfish
#execute store result score #rand var run random value 0..1
scoreboard players set #damage var 1


execute run function cards:entity/apply_damage
## Summons entity as friendly,
execute if score @s health matches 1.. run return 0
execute positioned ~ ~-1 ~ run function cards:entity/overworld/silverfish/summon
execute unless score #friendly var matches 1.. run function cards:helper/not_friendly
#say convert?
execute run scoreboard players add @a[tag=id,tag=turn] conversions 1
