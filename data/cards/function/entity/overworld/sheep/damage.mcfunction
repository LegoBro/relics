playsound minecraft:entity.sheep.hurt master @a[tag=id] ~ ~ ~ 10 1 1
data merge entity @s[scores={armor=0}] {Sheared:1b}
data merge entity @s[scores={armor=1..}] {Sheared:0b}