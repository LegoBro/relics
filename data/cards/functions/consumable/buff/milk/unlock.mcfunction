give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.milk.lore.0","color":"white","italic":false}','{"translate":"card.milk.lore.1","color":"white","italic":false}'],Name:'{"translate":"card.milk","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:112,card:{category:"consumable",element:"buff",rarity:"common",name:"milk",cost:8,placement:4}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:112}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/milk/change
item replace entity @s enderchest.0 from block 0 0 0 container.0