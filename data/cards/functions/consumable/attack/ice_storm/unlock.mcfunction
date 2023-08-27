give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 16","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.ice_storm.lore.0","color":"white","italic":false}','{"translate":"card.ice_storm.lore.1","color":"white","italic":false}','{"translate":"card.ice_storm.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.ice_storm","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:99,card:{category:"consumable",element:"attack",rarity:"rare",name:"ice_storm",cost:16,placement:4}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:99}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/ice_storm/change
item replace entity @s enderchest.0 from block 0 0 0 container.0