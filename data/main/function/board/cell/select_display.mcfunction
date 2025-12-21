## When a cell is selected,
# this will change display after stats have been calced

## Cases:
# Board Spot is within movement range
execute if score @s distance <= #speed var run item replace entity @s[tag=!filled] armor.head with book[item_model="cell_state/move"]
# Entity/Building is within attack range
execute if score @s distance <= #range var run item replace entity @s[tag=hostile] armor.head with book[item_model="cell_state/attack"]
# Void
execute if score @s distance matches 0 run item replace entity @s armor.head with book[item_model="cell_state/empty"]
