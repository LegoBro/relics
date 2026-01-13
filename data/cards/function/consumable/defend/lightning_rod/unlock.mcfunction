give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 7","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.lightning_rod.lore.0","color":"white","italic":false},{"translate":"card.lightning_rod.lore.1","color":"white","italic":false},{"translate":"card.lightning_rod.lore.2","color":"white","italic":false},{"translate":"card.lightning_rod.lore.3","color":"white","italic":false}],item_name={"color":"#b4d99e","translate":"card.lightning_rod"}, minecraft:unbreakable={},item_model="cards/lightning_rod",custom_data={gui:False, card:{id:123,category:"consumable",element:"defend",rarity:"uncommon",name:"lightning_rod",cost:7,placement:11}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/lightning_rod"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/lightning_rod/change
item replace entity @s enderchest.0 from block 0 0 0 container.0