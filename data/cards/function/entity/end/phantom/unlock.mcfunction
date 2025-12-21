give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 14","italic":false,"color":"white"},{"text":"        5 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}],[{"translate":"attack","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"},{"text":"        0 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}],[{"translate":"speed","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.phantom.lore.0","color":"white","italic":false}],item_name={"color":"green","translate":"card.phantom"}, minecraft:unbreakable={},item_model="cards/phantom",custom_data={gui:False, card:{id:62,category:"entity",element:"end",rarity:"uncommon",name:"phantom",cost:14,placement:10}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/phantom"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:entity/end/phantom/change
item replace entity @s enderchest.0 from block 0 0 0 container.0