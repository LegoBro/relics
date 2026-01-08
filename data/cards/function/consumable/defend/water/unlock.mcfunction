give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.water.lore.0","color":"white","italic":false},{"translate":"card.water.lore.1","color":"white","italic":false},{"translate":"card.water.lore.2","color":"white","italic":false},{"translate":"card.water.lore.3","color":"white","italic":false},{"translate":"card.water.lore.4","color":"white","italic":false}],item_name={"color":"green","translate":"card.water"}, minecraft:unbreakable={},item_model="cards/water",custom_data={gui:False, card:{id:113,category:"consumable",element:"defend",rarity:"common",name:"water",cost:5,placement:11}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/water"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/water/change
item replace entity @s enderchest.0 from block 0 0 0 container.0