

item replace block 0 0 0 container.0 from entity @s enderchest.0

data merge block 0 0 1 {Items:[]}
setblock 0 0 2 air
setblock 0 0 2 shulker_box
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

loot insert 0 0 1 mine 0 0 2 air{drop_contents:1b}

execute if score @s menu matches -1 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[0].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -2 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[1].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -3 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[2].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -4 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[3].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -5 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[4].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -6 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[5].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -7 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[6].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -8 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[7].tag.BlockEntityTag.Items set from block 0 0 1 Items
execute if score @s menu matches -9 run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[8].tag.BlockEntityTag.Items set from block 0 0 1 Items
item replace entity @s enderchest.0 from block 0 0 0 container.0

data merge block 0 0 1 {Items:[]}
data merge block 0 0 0 {Items:[]}
playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1 1.5