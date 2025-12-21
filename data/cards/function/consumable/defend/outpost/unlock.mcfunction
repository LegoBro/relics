give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 9","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.outpost.lore.0","color":"white","italic":false},{"translate":"card.outpost.lore.1","color":"white","italic":false},{"translate":"card.outpost.lore.2","color":"white","italic":false},{"translate":"card.outpost.lore.3","color":"white","italic":false}],item_name={"color":"green","translate":"card.outpost"}, minecraft:unbreakable={},item_model="cards/outpost",custom_data={gui:False, card:{id:102,category:"consumable",element:"defend",rarity:"common",name:"outpost",cost:9,placement:11}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/outpost"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/outpost/change
item replace entity @s enderchest.0 from block 0 0 0 container.0