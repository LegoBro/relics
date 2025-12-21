give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.sharpness.lore.0","color":"white","italic":false},{"translate":"card.sharpness.lore.1","color":"white","italic":false},{"translate":"card.sharpness.lore.2","color":"white","italic":false}],item_name={"color":"#018a73","translate":"card.sharpness"}, minecraft:unbreakable={},item_model="cards/sharpness",custom_data={gui:False, card:{id:128,category:"consumable",element:"buff",rarity:"common",name:"sharpness",cost:5,placement:8}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/sharpness"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/sharpness/change
item replace entity @s enderchest.0 from block 0 0 0 container.0