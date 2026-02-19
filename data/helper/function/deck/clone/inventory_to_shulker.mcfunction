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