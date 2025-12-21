give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 10","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.farmland.lore.0","color":"white","italic":false},{"translate":"card.farmland.lore.1","color":"white","italic":false},{"translate":"card.farmland.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.farmland"}, minecraft:unbreakable={},item_model="cards/farmland",custom_data={gui:False, card:{id:103,category:"consumable",element:"defend",rarity:"common",name:"farmland",cost:10,placement:11}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/farmland"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/farmland/change
item replace entity @s enderchest.0 from block 0 0 0 container.0