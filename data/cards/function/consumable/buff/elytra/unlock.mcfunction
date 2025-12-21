give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 16","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.elytra.lore.0","color":"white","italic":false},{"translate":"card.elytra.lore.1","color":"white","italic":false},{"translate":"card.elytra.lore.2","color":"white","italic":false},{"translate":"card.elytra.lore.3","color":"white","italic":false},{"translate":"card.elytra.lore.4","color":"white","italic":false}],item_name={"color":"green","translate":"card.elytra"}, minecraft:unbreakable={},item_model="cards/elytra",custom_data={gui:False, card:{id:90,category:"consumable",element:"buff",rarity:"epic",name:"elytra",cost:16,placement:5}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/elytra"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/elytra/change
item replace entity @s enderchest.0 from block 0 0 0 container.0