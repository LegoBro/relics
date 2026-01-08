## Mine the block
playsound block.vault.break master @a[tag=id] ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] if entity @s[tag=friendly] run tag @p[tag=id,tag=turn] add loot_receiver
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] if entity @s[tag=hostile] run tag @p[tag=id,tag=wait] add loot_receiver


function cards:consumable/defend/vault/loot_loop
#execute as @p[tag=id,tag=loot_receiver] at @s run kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{trash:1b}}}}]

tag @a[tag=id,tag=loot_receiver] remove loot_receiver