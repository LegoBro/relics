## Special Attack

#playsound minecraft:entity.arrow.shoot master @a[tag=id] ~ ~ ~ 10 0 1
execute store result score #rand var run random value 0..2
execute if score #rand var matches 0 run scoreboard players set @s[tag=!hero.1,tag=!hero.2] speed_pot 5
execute if score #rand var matches 0 run tellraw @a[tag=id] [{"text":"Witch throws a speed potion on ","color":"green"},{"selector":"@s"}]
execute if score #rand var matches 1 run scoreboard players set @s strength 4
execute if score #rand var matches 1 run tellraw @a[tag=id] [{"text":"Witch throws a strength potion on ","color":"green"},{"selector":"@s"}]
execute if score #rand var matches 2 run scoreboard players set @s fire_resistance 12
execute if score #rand var matches 2 run tellraw @a[tag=id] [{"text":"Witch throws a fire resistance potion on ","color":"green"},{"selector":"@s"}]

playsound minecraft:entity.witch.drink master @a[tag=id] ~ ~ ~ 10 1 1
