## Generic villager buff

scoreboard players add @s maxHealth 1
scoreboard players add @s health 1

execute if entity @s[tag=cleric] run return run function cards:entity/overworld/cleric/buff_hero
execute if entity @s[tag=armorsmith] run return run function cards:entity/overworld/armorsmith/buff_hero
execute if entity @s[tag=fletcher] run return run scoreboard players add @s range 1




execute if entity @s[tag=farmer] as @p[tag=id,tag=turn] run return run function cards:consumable/buff/bread/discover