give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.sculk_sensor.lore.0","color":"white","italic":false},{"translate":"card.sculk_sensor.lore.1","color":"white","italic":false},{"translate":"card.sculk_sensor.lore.2","color":"white","italic":false}],item_name={"color":"#018a73","translate":"card.sculk_sensor"}, minecraft:unbreakable={},item_model="cards/sculk_sensor",custom_data={gui:False, card:{id:127,category:"consumable",element:"defend",rarity:"unknown",name:"sculk_sensor",cost:5,placement:11}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/sculk_sensor"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/sculk_sensor/change
item replace entity @s enderchest.0 from block 0 0 0 container.0