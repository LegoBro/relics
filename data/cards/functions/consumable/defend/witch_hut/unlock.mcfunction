give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 12","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.witch_hut.lore.0","color":"white","italic":false}','{"translate":"card.witch_hut.lore.1","color":"white","italic":false}','{"translate":"card.witch_hut.lore.2","color":"white","italic":false}','{"translate":"card.witch_hut.lore.3","color":"white","italic":false}','{"translate":"card.witch_hut.lore.4","color":"white","italic":false}'],Name:'{"translate":"card.witch_hut","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:111,card:{category:"consumable",element:"defend",rarity:"rare",name:"witch_hut",cost:12,placement:2}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:111}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/witch_hut/change
item replace entity @s enderchest.0 from block 0 0 0 container.0