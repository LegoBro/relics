## Slot for card
data modify block 0 0 0 Items[{Slot:0b}] set from block ~ ~-2 ~ Items[{Slot:26b}]
item replace block ~ ~-2 ~ container.26 with air
tag @s remove redraw