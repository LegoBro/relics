## Executed as a player, and loads in the player's deck
# For new players
# Copies deck in world to player's inventory
item replace entity @s enderchest.0 with brown_shulker_box[container=[{slot:0,item:{id:"minecraft:stone",count:1}}],custom_data={Collection:[{id:2,count:1},{id:3,count:1},{id:4,count:1},{id:5,count:1},{id:7,count:1},{id:9,count:1},{id:10,count:1},{id:11,count:1},{id:12,count:0},{id:13,count:1},{id:14,count:1},{id:15,count:1},{id:16,count:1},{id:17,count:1},{id:18,count:1},{id:19,count:1},{id:20,count:1},{id:21,count:1},{id:22,count:1},{id:23,count:1},{id:24,count:1},{id:25,count:1},{id:26,count:0},{id:27,count:1},{id:28,count:1},{id:29,count:1},{id:30,count:1},{id:31,count:1},{id:32,count:1}]}]

# Store default deck
item replace block 0 0 0 container.0 from entity @s enderchest.0

#Items[0].components."minecraft:container"[0].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"


data modify block 0 0 0 Items[0].components."minecraft:container" set value [{slot:0,item:{id:"minecraft:white_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:1,item:{id:"minecraft:red_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:2,item:{id:"minecraft:orange_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:3,item:{id:"minecraft:yellow_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:4,item:{id:"minecraft:green_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:5,item:{id:"minecraft:cyan_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:6,item:{id:"minecraft:blue_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:7,item:{id:"minecraft:purple_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}},{slot:8,item:{id:"minecraft:black_shulker_box",count:1b,components:{"container":[{slot:0,item:{id:"minecraft:stone",count:1b}}]}}}]

#data modify block 0 0 0 Items[0].components."minecraft:container"[0].item.components."minecraft:container" set from block 0 3 1 Items[0].components."minecraft:container"
data remove block 10 1 0 Items
loot insert 10 1 0 mine 10 0 0

data modify block 0 0 0 Items[0].components."minecraft:container"[0].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[1].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[2].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[3].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[4].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[5].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[6].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[7].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
data modify block 0 0 0 Items[0].components."minecraft:container"[8].item.components."minecraft:container" set from block 10 1 0 Items[0].components."minecraft:container"
item replace entity @s enderchest.0 from block 0 0 0 container.0