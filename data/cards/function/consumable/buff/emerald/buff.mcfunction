## Buff the entity, epic
execute if entity @s[tag=zombie_villager] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=zombie_villager] run scoreboard players add @s health 1
execute if entity @s[tag=zombie_villager] run scoreboard players add @s attack 1

execute if entity @s[tag=cleric] run function cards:entity/overworld/cleric/buff_hero
execute if entity @s[tag=cleric] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=cleric] run scoreboard players add @s health 1

execute if entity @s[tag=armorsmith] run function cards:entity/overworld/armorsmith/buff_hero
execute if entity @s[tag=armorsmith] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=armorsmith] run scoreboard players add @s health 1

execute if entity @s[tag=fletcher] run scoreboard players add @s range 1
execute if entity @s[tag=fletcher] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=fletcher] run scoreboard players add @s health 1

execute if entity @s[tag=wandering_trader] as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=random] at @s run tag @s add summon.llama
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.llama] at @s run data merge entity @s {CustomName:'{"text":"Wandering Trader"}'}
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.llama] at @s run team join red @s
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.llama] at @s run function cards:entity/overworld/llama/summon
tag @e[type=armor_stand,tag=id,tag=summon.llama] remove summon.llama


execute if entity @s[tag=wandering_trader] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=wandering_trader] run scoreboard players add @s health 1

execute if entity @s[tag=pillager] run scoreboard players add @s attack 1
execute if entity @s[tag=pillager] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=pillager] run scoreboard players add @s health 1

execute if entity @s[tag=vindicator] run scoreboard players add @s attack 1
execute if entity @s[tag=vindicator] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=vindicator] run scoreboard players add @s health 1

execute if entity @s[tag=butcher] run scoreboard players add @s maxHealth 1
execute if entity @s[tag=butcher] run scoreboard players add @s health 1
#execute if entity @s[tag=butcher] run scoreboard players add @s attack 1

execute if entity @s[tag=librarian] run function cards:entity/overworld/librarian/emerald
execute if entity @s[tag=librarian] run scoreboard players add @s attack 1