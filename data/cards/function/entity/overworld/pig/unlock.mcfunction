give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"},{"text":"        3 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}],[{"translate":"attack","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"},{"text":"        0 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}],[{"translate":"speed","italic":false,"color":"white"},{"text":" 1","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.pig.lore.0","color":"white","italic":false}],item_name={"color":"green","translate":"card.pig"}, minecraft:unbreakable={},item_model="cards/pig",custom_data={gui:False, card:{id:28,category:"entity",element:"overworld",rarity:"common",name:"pig",cost:2,placement:2}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/pig"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:entity/overworld/pig/change
item replace entity @s enderchest.0 from block 0 0 0 container.0