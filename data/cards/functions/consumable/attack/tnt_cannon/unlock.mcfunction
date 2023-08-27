give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 14","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.tnt_cannon.lore.0","color":"white","italic":false}','{"translate":"card.tnt_cannon.lore.1","color":"white","italic":false}','{"translate":"card.tnt_cannon.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.tnt_cannon","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:93,card:{category:"consumable",element:"attack",rarity:"epic",name:"tnt_cannon",cost:14,placement:0}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:93}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/tnt_cannon/change
item replace entity @s enderchest.0 from block 0 0 0 container.0