## Place an enchantment table
playsound block.enchantment_table.use master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] positioned ~ ~1 ~ run function cards:consumable/defend/enchantment_table/set
