give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.arrow_storm.lore.0","color":"white","italic":false}','{"translate":"card.arrow_storm.lore.1","color":"white","italic":false}','{"translate":"card.arrow_storm.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.arrow_storm","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:20,card:{category:"consumable",element:"attack",rarity:"common",name:"arrow_storm",cost:4,placement:4}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:20}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/arrow_storm/change
item replace entity @s enderchest.0 from block 0 0 0 container.0