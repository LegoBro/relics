give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 15","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.sculk_catalyst.lore.0","color":"white","italic":false},{"translate":"card.sculk_catalyst.lore.1","color":"white","italic":false},{"translate":"card.sculk_catalyst.lore.2","color":"white","italic":false}],item_name={"color":"#018a73","translate":"card.sculk_catalyst"}, minecraft:unbreakable={},item_model="cards/sculk_catalyst",custom_data={gui:False, card:{id:125,category:"consumable",element:"defend",rarity:"epic",name:"sculk_catalyst",cost:15,placement:11}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/sculk_catalyst"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/sculk_catalyst/change
item replace entity @s enderchest.0 from block 0 0 0 container.0