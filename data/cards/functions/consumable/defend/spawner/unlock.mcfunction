give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 7","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.spawner.lore.0","color":"white","italic":false}','{"translate":"card.spawner.lore.1","color":"white","italic":false}','{"translate":"card.spawner.lore.2","color":"white","italic":false}','{"translate":"card.spawner.lore.3","color":"white","italic":false}','{"translate":"card.spawner.lore.4","color":"white","italic":false}'],Name:'{"translate":"card.spawner","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:64,card:{category:"consumable",element:"defend",rarity:"rare",name:"spawner",cost:7,placement:2}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:64}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/spawner/change
item replace entity @s enderchest.0 from block 0 0 0 container.0