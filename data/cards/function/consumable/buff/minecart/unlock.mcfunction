give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.minecart.lore.0","color":"white","italic":false},{"translate":"card.minecart.lore.1","color":"white","italic":false},{"translate":"card.minecart.lore.2","color":"white","italic":false},{"translate":"card.minecart.lore.3","color":"white","italic":false}],item_name={"color":"#018a73","translate":"card.minecart"}, minecraft:unbreakable={},item_model="cards/minecart",custom_data={gui:False, card:{id:129,category:"consumable",element:"buff",rarity:"common",name:"minecart",cost:6,placement:15}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/minecart"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/minecart/change
item replace entity @s enderchest.0 from block 0 0 0 container.0