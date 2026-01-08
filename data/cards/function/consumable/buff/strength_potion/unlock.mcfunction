give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 7","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.strength_potion.lore.0","color":"white","italic":false},{"translate":"card.strength_potion.lore.1","color":"white","italic":false},{"translate":"card.strength_potion.lore.2","color":"white","italic":false},{"translate":"card.strength_potion.lore.3","color":"white","italic":false}],item_name={"color":"green","translate":"card.strength_potion"}, minecraft:unbreakable={},item_model="cards/strength_potion",custom_data={gui:False, card:{id:24,category:"consumable",element:"buff",rarity:"common",name:"strength_potion",cost:7,placement:8}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/strength_potion"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/strength_potion/change
item replace entity @s enderchest.0 from block 0 0 0 container.0