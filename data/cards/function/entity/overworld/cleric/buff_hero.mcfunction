## Buffs the hero!
scoreboard players set #heal var 1
function card:helper/tag_my_hero
execute as @n[tag=my_hero,tag=id,distance=..100] run function cards:entity/heal
