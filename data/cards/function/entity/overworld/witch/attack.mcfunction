## Special Attack

#playsound minecraft:entity.arrow.shoot master @a[tag=id] ~ ~ ~ 10 0 1
execute store result score #rand var run random value 0..2
execute if score #rand var matches 0 run scoreboard players set @e[tag=target,tag=id] slowness 7
execute if score #rand var matches 0 run tellraw @a[tag=id] [{"text":"Witch throws a slowness potion on ","color":"green"},{"selector":"@e[tag=target,tag=id]"}]
execute if score #rand var matches 1 run scoreboard players set @e[tag=target,tag=id] weakness 5
execute if score #rand var matches 1 run tellraw @a[tag=id] [{"text":"Witch throws a weakness potion on ","color":"green"},{"selector":"@e[tag=target,tag=id]"}]
execute if score #rand var matches 2 run scoreboard players add @e[tag=target,tag=id] poison 4
execute if score #rand var matches 2 run tellraw @a[tag=id] [{"text":"Witch throws a poison potion on ","color":"green"},{"selector":"@e[tag=target,tag=id]"}]

playsound minecraft:entity.witch.throw master @a[tag=id] ~ ~ ~ 10 1 1
