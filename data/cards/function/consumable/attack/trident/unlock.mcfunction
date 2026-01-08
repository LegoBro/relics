give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 17","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.trident.lore.0","color":"white","italic":false},{"translate":"card.trident.lore.1","color":"white","italic":false},{"translate":"card.trident.lore.2","color":"white","italic":false},{"translate":"card.trident.lore.3","color":"white","italic":false}],item_name={"color":"green","translate":"card.trident"}, minecraft:unbreakable={},item_model="cards/trident",custom_data={gui:False, card:{id:66,category:"consumable",element:"attack",rarity:"common",name:"trident",cost:17,placement:4}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/trident"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/trident/change
item replace entity @s enderchest.0 from block 0 0 0 container.0