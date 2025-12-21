give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.goat_horn.lore.0","color":"white","italic":false},{"translate":"card.goat_horn.lore.1","color":"white","italic":false},{"translate":"card.goat_horn.lore.2","color":"white","italic":false},{"translate":"card.goat_horn.lore.3","color":"white","italic":false}],item_name={"color":"#FBB1F2","translate":"card.goat_horn"}, minecraft:unbreakable={},item_model="cards/goat_horn",custom_data={gui:False, card:{id:136,category:"consumable",element:"buff",rarity:"rare",name:"goat_horn",cost:8,placement:0}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/goat_horn"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/goat_horn/change
item replace entity @s enderchest.0 from block 0 0 0 container.0