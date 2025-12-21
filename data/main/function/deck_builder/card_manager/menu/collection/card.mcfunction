## Use malleable slot
item replace block 0 0 0 container.0 from entity @s enderchest.1

function cards:collection_dict

item replace entity @s enderchest.1 from block 0 0 0 container.0

function main:deck_builder/card_manager/update/collection
