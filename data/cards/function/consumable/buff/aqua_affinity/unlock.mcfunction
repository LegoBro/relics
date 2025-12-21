give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.aqua_affinity.lore.0","color":"white","italic":false},{"translate":"card.aqua_affinity.lore.1","color":"white","italic":false}],item_name={"color":"#FBB1F2","translate":"card.aqua_affinity"}, minecraft:unbreakable={},item_model="cards/aqua_affinity",custom_data={gui:False, card:{id:137,category:"consumable",element:"buff",rarity:"common",name:"aqua_affinity",cost:2,placement:17}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/aqua_affinity"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/aqua_affinity/change
item replace entity @s enderchest.0 from block 0 0 0 container.0