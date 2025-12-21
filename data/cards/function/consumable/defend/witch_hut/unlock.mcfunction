give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 12","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.witch_hut.lore.0","color":"white","italic":false},{"translate":"card.witch_hut.lore.1","color":"white","italic":false}],item_name={"color":"green","translate":"card.witch_hut"}, minecraft:unbreakable={},item_model="cards/witch_hut",custom_data={gui:False, card:{id:111,category:"consumable",element:"defend",rarity:"rare",name:"witch_hut",cost:12,placement:2}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/witch_hut"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/witch_hut/change
item replace entity @s enderchest.0 from block 0 0 0 container.0