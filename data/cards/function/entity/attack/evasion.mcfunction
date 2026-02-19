# 50% chance of avoiding damage
execute store result score #rand var run random value 0..1

#  0 = not evaded
#  1 = evaded

#execute if score #rand var matches 1 run tellraw @a[tag=id] [{selector:"@s"},{text:" "},{"translate":"attack.evade"}]
execute if score #rand var matches 1 run tellraw @a[tag=id] {"translate":"attack.evade","with":[{"selector":"@s"}]}
execute if score #rand var matches 1 run playsound minecraft:item.armor.equip_leather hostile @a[tag=id] ~ ~ ~ 1 0.5 1

return run scoreboard players get #rand var