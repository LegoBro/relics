give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.honeycomb.lore.0","color":"white","italic":false}','{"translate":"card.honeycomb.lore.1","color":"white","italic":false}','{"translate":"card.honeycomb.lore.2","color":"white","italic":false}','{"translate":"card.honeycomb.lore.3","color":"white","italic":false}'],Name:'{"translate":"card.honeycomb","italic":"false","color":"#b4d99e"}'},HideFlags:127,Unbreakable:1b,CustomModelData:120,card:{category:"consumable",element:"buff",rarity:"uncommon",name:"honeycomb",cost:5,placement:3}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:120}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/honeycomb/change
item replace entity @s enderchest.0 from block 0 0 0 container.0