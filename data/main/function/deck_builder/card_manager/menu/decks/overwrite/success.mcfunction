

item replace block 0 0 0 container.0 from entity @s enderchest.0

data merge block 0 0 1 {Items:[]}
setblock 0 0 2 air
setblock 0 0 2 yellow_shulker_box
data modify block 0 0 1 Items set from entity @s Inventory
item replace block 0 0 2 container.0 from entity @s inventory.18
item replace block 0 0 2 container.1 from entity @s inventory.19
item replace block 0 0 2 container.2 from entity @s inventory.20
item replace block 0 0 2 container.3 from entity @s inventory.21
item replace block 0 0 2 container.4 from entity @s inventory.22
item replace block 0 0 2 container.5 from entity @s inventory.23
item replace block 0 0 2 container.6 from entity @s inventory.24
item replace block 0 0 2 container.7 from entity @s inventory.25
item replace block 0 0 2 container.8 from entity @s inventory.26

loot insert 0 0 1 mine 0 0 2 minecraft:stone[custom_data={drop_contents:1b}]

## Copy shulker into separate block to transform Item format???
setblock 0 3 1 air
setblock 0 3 1 yellow_shulker_box
loot insert 0 3 1 mine 0 0 1

execute if score @s menu matches -1 run data modify block 0 0 0 Items[0].components."minecraft:container"[0].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -2 run data modify block 0 0 0 Items[0].components."minecraft:container"[1].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -3 run data modify block 0 0 0 Items[0].components."minecraft:container"[2].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -4 run data modify block 0 0 0 Items[0].components."minecraft:container"[3].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -5 run data modify block 0 0 0 Items[0].components."minecraft:container"[4].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -6 run data modify block 0 0 0 Items[0].components."minecraft:container"[5].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -7 run data modify block 0 0 0 Items[0].components."minecraft:container"[6].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -8 run data modify block 0 0 0 Items[0].components."minecraft:container"[7].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
execute if score @s menu matches -9 run data modify block 0 0 0 Items[0].components."minecraft:container"[8].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
item replace entity @s enderchest.0 from block 0 0 0 container.0

data merge block 0 0 1 {Items:[]}
data merge block 0 0 0 {Items:[]}
playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1 1.5