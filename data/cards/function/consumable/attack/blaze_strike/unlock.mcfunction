give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.blaze_strike.lore.0","color":"white","italic":false},{"translate":"card.blaze_strike.lore.1","color":"white","italic":false},{"translate":"card.blaze_strike.lore.2","color":"white","italic":false},{"translate":"card.blaze_strike.lore.3","color":"white","italic":false}],item_name={"color":"green","translate":"card.blaze_strike"}, minecraft:unbreakable={},item_model="cards/blaze_strike",custom_data={gui:False, card:{id:30,category:"consumable",element:"attack",rarity:"common",name:"blaze_strike",cost:8,placement:4}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/blaze_strike"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/blaze_strike/change
item replace entity @s enderchest.0 from block 0 0 0 container.0