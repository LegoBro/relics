## Place a cobblestone block
playsound block.vault.place master @a[tag=id] ~ ~ ~ 1 1 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] positioned ~ ~1 ~ run function cards:consumable/defend/vault/set
