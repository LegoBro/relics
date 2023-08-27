## Executed as a player, and loads in the player's deck
# For new players
# Copies deck in world to player's inventory
item replace entity @s enderchest.0 with orange_shulker_box{BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b}]},Collection:[{count:5,id:19},{count:3,id:78},{count:5,id:20},{count:3,id:115},{count:5,id:12},{count:5,id:61},{count:4,id:104},{count:5,id:105},{count:4,id:13},{count:5,id:30},{count:5,id:22},{count:4,id:1},{count:2,id:70},{count:5,id:101},{count:5,id:73},{count:3,id:75},{count:5,id:25},{count:5,id:26},{count:5,id:2},{count:4,id:94},{count:3,id:48},{count:5,id:108},{count:5,id:87},{count:5,id:71},{count:5,id:54},{count:1,id:89},{count:2,id:90},{count:5,id:76},{count:1,id:53},{count:3,id:67},{count:1,id:74},{count:5,id:72},{count:5,id:16},{count:5,id:17},{count:2,id:86},{count:5,id:103},{count:4,id:117},{count:5,id:79},{count:4,id:33},{count:4,id:39},{count:4,id:51},{count:4,id:116},{count:4,id:31},{count:5,id:47},{count:4,id:88},{count:4,id:29},{count:5,id:106},{count:4,id:35},{count:4,id:120},{count:4,id:97},{count:5,id:57},{count:3,id:99},{count:3,id:83},{count:4,id:23},{count:4,id:3},{count:5,id:21},{count:3,id:110},{count:3,id:92},{count:5,id:43},{count:5,id:46},{count:4,id:123},{count:4,id:96},{count:4,id:14},{count:5,id:112},{count:2,id:50},{count:3,id:100},{count:2,id:114},{count:2,id:49},{count:5,id:102},{count:4,id:98},{count:4,id:62},{count:5,id:65},{count:5,id:28},{count:5,id:36},{count:4,id:42},{count:3,id:37},{count:5,id:84},{count:5,id:121},{count:4,id:95},{count:3,id:4},{count:5,id:91},{count:3,id:18},{count:5,id:63},{count:5,id:5},{count:4,id:58},{count:2,id:59},{count:5,id:34},{count:4,id:6},{count:3,id:64},{count:4,id:44},{count:5,id:32},{count:5,id:7},{count:5,id:119},{count:5,id:45},{count:5,id:118},{count:4,id:82},{count:4,id:8},{count:4,id:122},{count:5,id:55},{count:5,id:24},{count:5,id:109},{count:3,id:69},{count:4,id:68},{count:2,id:93},{count:5,id:66},{count:5,id:9},{count:5,id:81},{count:5,id:60},{count:3,id:85},{count:3,id:77},{count:5,id:113},{count:4,id:107},{count:4,id:80},{count:3,id:111},{count:1,id:41},{count:3,id:15},{count:4,id:27},{count:4,id:10},{count:3,id:40},{count:5,id:11},{count:5,id:56},{count:5,id:38}]}

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
function cards:tournament_give
item replace entity @s enderchest.0 from block 0 0 0 container.0
tag @s add tournament