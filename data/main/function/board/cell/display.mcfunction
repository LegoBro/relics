## Display executor to look fancy
item replace entity @s[tag=!hostile,tag=!friendly,tag=!blocked,tag=!draw_pile] armor.head with book[item_model="cell_state/empty"]

item replace entity @s[tag=draw_pile] armor.head with book[item_model="cell_state/card_pile"]

item replace entity @s[tag=discard_pile] armor.head with book[item_model="cell_state/trash"]

execute if entity @a[tag=id,tag=player.1,tag=turn] run item replace entity @s[tag=friendly,tag=!blocked] armor.head with book[item_model="cell_state/player1"]
execute unless entity @a[tag=id,tag=player.1,tag=turn] run item replace entity @s[tag=hostile,tag=!blocked] armor.head with book[item_model="cell_state/player1"]

execute if entity @a[tag=id,tag=player.2,tag=turn] run item replace entity @s[tag=friendly,tag=!blocked] armor.head with book[item_model="cell_state/player2"]
execute unless entity @a[tag=id,tag=player.2,tag=turn] run item replace entity @s[tag=hostile,tag=!blocked] armor.head with book[item_model="cell_state/player2"]

item replace entity @s[tag=blocked] armor.head with book[item_model="cell_state/empty"]
