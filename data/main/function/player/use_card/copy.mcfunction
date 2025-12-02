## Copies card from player to inventory
setblock 0 0 0 air
setblock 0 0 0 shulker_box
data modify block 0 0 0 Items[] set from entity @s SelectedItem

execute unless entity @s[nbt={SelectedItem:{tag:{card:{trash:1b}}}}] run loot insert ~ ~-3 ~ mine 0 0 0 minecraft:air{drop_contents:1b}
item replace entity @s weapon.mainhand with air
