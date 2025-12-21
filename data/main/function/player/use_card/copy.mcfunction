## Copies card from player to inventory
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
data modify block 0 0 0 Items[] set from entity @s SelectedItem

execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{card:{trash:1b}}}}}] run loot insert ~ ~-3 ~ mine 0 0 0 minecraft:stone[custom_data={drop_contents:1b}]
item replace entity @s weapon.mainhand with air
