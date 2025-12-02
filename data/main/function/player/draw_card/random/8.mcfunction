## Slot for card
data modify block 0 0 0 Items[{Slot:0b}] set from block ~ ~-2 ~ Items[{Slot:8b}]
item replace block ~ ~-2 ~ container.8 with air
tag @s remove redraw