give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 10","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.invisibility_potion.lore.0","color":"white","italic":false},{"translate":"card.invisibility_potion.lore.1","color":"white","italic":false},{"translate":"card.invisibility_potion.lore.2","color":"white","italic":false},{"translate":"card.invisibility_potion.lore.3","color":"white","italic":false}],item_name={"color":"green","translate":"card.invisibility_potion"}, minecraft:unbreakable={},item_model="cards/invisibility_potion",custom_data={gui:False, card:{id:83,category:"consumable",element:"buff",rarity:"rare",name:"invisibility_potion",cost:10,placement:5}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/invisibility_potion"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/invisibility_potion/change
item replace entity @s enderchest.0 from block 0 0 0 container.0