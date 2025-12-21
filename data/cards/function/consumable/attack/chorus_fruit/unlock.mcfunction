give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.chorus_fruit.lore.0","color":"white","italic":false},{"translate":"card.chorus_fruit.lore.1","color":"white","italic":false},{"translate":"card.chorus_fruit.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.chorus_fruit"}, minecraft:unbreakable={},item_model="cards/chorus_fruit",custom_data={gui:False, card:{id:73,category:"consumable",element:"attack",rarity:"common",name:"chorus_fruit",cost:3,placement:4}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/chorus_fruit"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/chorus_fruit/change
item replace entity @s enderchest.0 from block 0 0 0 container.0