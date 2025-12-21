give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.hay_bale.lore.0","color":"white","italic":false},{"translate":"card.hay_bale.lore.1","color":"white","italic":false},{"translate":"card.hay_bale.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.hay_bale"}, minecraft:unbreakable={},item_model="cards/hay_bale",custom_data={gui:False, card:{id:106,category:"consumable",element:"defend",rarity:"common",name:"hay_bale",cost:5,placement:2}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/hay_bale"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/hay_bale/change
item replace entity @s enderchest.0 from block 0 0 0 container.0