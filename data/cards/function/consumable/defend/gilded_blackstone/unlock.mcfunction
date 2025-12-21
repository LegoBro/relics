give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.gilded_blackstone.lore.0","color":"white","italic":false},{"translate":"card.gilded_blackstone.lore.1","color":"white","italic":false},{"translate":"card.gilded_blackstone.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.gilded_blackstone"}, minecraft:unbreakable={},item_model="cards/gilded_blackstone",custom_data={gui:False, card:{id:51,category:"consumable",element:"defend",rarity:"uncommon",name:"gilded_blackstone",cost:3,placement:2}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/gilded_blackstone"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/gilded_blackstone/change
item replace entity @s enderchest.0 from block 0 0 0 container.0