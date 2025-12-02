## Executed as a player, and loads in the player's deck
# For new players
# Copies deck in world to player's inventory
item replace entity @s enderchest.0 with brown_shulker_box{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]},Collection:[{id:2,count:1},{id:3,count:1},{id:4,count:1},{id:5,count:1},{id:7,count:1},{id:9,count:1},{id:10,count:1},{id:11,count:1},{id:12,count:0},{id:13,count:1},{id:14,count:1},{id:15,count:1},{id:16,count:1},{id:17,count:1},{id:18,count:1},{id:19,count:1},{id:20,count:1},{id:21,count:1},{id:22,count:1},{id:23,count:1},{id:24,count:1},{id:25,count:1},{id:26,count:0},{id:27,count:1},{id:28,count:1},{id:29,count:1},{id:30,count:1},{id:31,count:1},{id:32,count:1}]}

# Store default deck
item replace block 0 0 0 container.0 from entity @s enderchest.0
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items set value [{Slot:0b,id:"minecraft:white_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:1b,id:"minecraft:red_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:2b,id:"minecraft:orange_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:3b,id:"minecraft:yellow_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:4b,id:"minecraft:green_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:5b,id:"minecraft:cyan_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:6b,id:"minecraft:blue_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:7b,id:"minecraft:purple_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}},{Slot:8b,id:"minecraft:black_shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]}}}]
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[0].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[1].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[2].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[3].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[4].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[5].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[6].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[7].tag.BlockEntityTag.Items set from block 10 0 0 Items
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Items[8].tag.BlockEntityTag.Items set from block 10 0 0 Items
item replace entity @s enderchest.0 from block 0 0 0 container.0