give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 13","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.dragons_breath.lore.0","color":"white","italic":false}','{"translate":"card.dragons_breath.lore.1","color":"white","italic":false}','{"translate":"card.dragons_breath.lore.2","color":"white","italic":false}','{"translate":"card.dragons_breath.lore.3","color":"white","italic":false}','{"translate":"card.dragons_breath.lore.4","color":"white","italic":false}'],Name:'{"translate":"card.dragons_breath","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:71,card:{category:"consumable",element:"attack",rarity:"common",name:"dragons_breath",cost:13,placement:4}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:71}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/dragons_breath/change
item replace entity @s enderchest.0 from block 0 0 0 container.0