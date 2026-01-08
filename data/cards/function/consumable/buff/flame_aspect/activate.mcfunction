# hit with anvil
playsound block.enchantment_table.use hostile @a[tag=id] ~ ~ ~ 1 1 1
playsound minecraft:entity.player.hurt_on_fire hostile @a[tag=id] ~ ~ ~ 1 1 1

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:consumable/buff/flame_aspect/apply
function cards:consumable/generic/use_enchantment