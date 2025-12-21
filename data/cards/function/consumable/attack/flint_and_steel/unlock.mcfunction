give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.flint_and_steel.lore.0","color":"white","italic":false},{"translate":"card.flint_and_steel.lore.1","color":"white","italic":false},{"translate":"card.flint_and_steel.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.flint_and_steel"}, minecraft:unbreakable={},item_model="cards/flint_and_steel",custom_data={gui:False, card:{id:79,category:"consumable",element:"attack",rarity:"common",name:"flint_and_steel",cost:5,placement:15}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/flint_and_steel"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/flint_and_steel/change
item replace entity @s enderchest.0 from block 0 0 0 container.0