give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.bee_hive.lore.0","color":"white","italic":false},{"translate":"card.bee_hive.lore.1","color":"white","italic":false},{"translate":"card.bee_hive.lore.2","color":"white","italic":false},{"translate":"card.bee_hive.lore.3","color":"white","italic":false}],item_name={"color":"green","translate":"card.bee_hive"}, minecraft:unbreakable={},item_model="cards/bee_hive",custom_data={gui:False, card:{id:104,category:"consumable",element:"defend",rarity:"uncommon",name:"bee_hive",cost:8,placement:11}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/bee_hive"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/bee_hive/change
item replace entity @s enderchest.0 from block 0 0 0 container.0