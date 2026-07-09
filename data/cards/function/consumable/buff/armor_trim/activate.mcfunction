## Armor up my hero
function card:helper/tag_my_hero
scoreboard players add @n[tag=id,tag=my_hero,distance=..200] armor 1
playsound minecraft:block.smithing_table.use master @a[tag=id]