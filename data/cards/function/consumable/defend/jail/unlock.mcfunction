give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 13","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.jail.lore.0","color":"white","italic":false},{"translate":"card.jail.lore.1","color":"white","italic":false},{"translate":"card.jail.lore.2","color":"white","italic":false},{"translate":"card.jail.lore.3","color":"white","italic":false}],item_name={"color":"green","translate":"card.jail"}, minecraft:unbreakable={},item_model="cards/jail",custom_data={gui:False, card:{id:110,category:"consumable",element:"defend",rarity:"rare",name:"jail",cost:13,placement:4}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/jail"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/jail/change
item replace entity @s enderchest.0 from block 0 0 0 container.0