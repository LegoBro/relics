give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.honeycomb.lore.0","color":"white","italic":false},{"translate":"card.honeycomb.lore.1","color":"white","italic":false},{"translate":"card.honeycomb.lore.2","color":"white","italic":false},{"translate":"card.honeycomb.lore.3","color":"white","italic":false}],item_name={"color":"#b4d99e","translate":"card.honeycomb"}, minecraft:unbreakable={},item_model="cards/honeycomb",custom_data={gui:False, card:{id:120,category:"consumable",element:"buff",rarity:"uncommon",name:"honeycomb",cost:5,placement:3}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/honeycomb"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/honeycomb/change
item replace entity @s enderchest.0 from block 0 0 0 container.0