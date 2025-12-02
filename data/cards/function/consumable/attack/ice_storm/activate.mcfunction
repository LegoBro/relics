# teleport randomly
playsound block.glass.break master @a[tag=id] ~ ~ ~ 10 2 1
execute at @e[tag=board,tag=!hero,tag=id] positioned ~ ~5 ~ run summon snowball ~ ~2 ~ {Item:{id:"minecraft:ice",Count:1b}}
execute as @e[tag=card.entity,tag=!card.hero,tag=id] run function cards:consumable/attack/ice_storm/freeze
