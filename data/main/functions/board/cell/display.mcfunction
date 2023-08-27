## Display executor to look fancy
item replace entity @s[tag=!hostile,tag=!friendly,tag=!blocked,tag=!draw_pile] armor.head with book{CustomModelData:1}

item replace entity @s[tag=draw_pile] armor.head with book{CustomModelData:2}

item replace entity @s[tag=discard_pile] armor.head with book{CustomModelData:8}

execute if entity @a[tag=id,tag=player.1,tag=turn] run item replace entity @s[tag=friendly,tag=!blocked] armor.head with book{CustomModelData:3}
execute unless entity @a[tag=id,tag=player.1,tag=turn] run item replace entity @s[tag=hostile,tag=!blocked] armor.head with book{CustomModelData:3}

execute if entity @a[tag=id,tag=player.2,tag=turn] run item replace entity @s[tag=friendly,tag=!blocked] armor.head with book{CustomModelData:4}
execute unless entity @a[tag=id,tag=player.2,tag=turn] run item replace entity @s[tag=hostile,tag=!blocked] armor.head with book{CustomModelData:4}

item replace entity @s[tag=blocked] armor.head with book{CustomModelData:1}
