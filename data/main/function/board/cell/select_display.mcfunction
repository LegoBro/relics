## When a cell is selected,
# this will change display after stats have been calced

## Cases:
# Board Spot is within movement range
execute if score @s distance <= #speed var run item replace entity @s[tag=!filled] armor.head with book[item_model="cell_state/move"]
# Entity/Building is within attack range
execute if score @s distance <= #range var run item replace entity @s[tag=hostile] armor.head with book[item_model="cell_state/attack"]
# Entity/Building is within attack range and can attack friendlies
execute if score #can_attack_friendly var matches 1.. if score @s distance <= #range var run item replace entity @s[tag=friendly] armor.head with book[item_model="cell_state/attack"]
# Entity has saddle equipped
execute if score @s distance <= #speed var if entity @n[tag=id,tag=card.entity,tag=has_saddle,distance=..1.5] run item replace entity @s[tag=filled] armor.head with book[item_model="cell_state/saddle"]

# Void
execute if score @s distance matches 0 run item replace entity @s armor.head with book[item_model="cell_state/empty"]
