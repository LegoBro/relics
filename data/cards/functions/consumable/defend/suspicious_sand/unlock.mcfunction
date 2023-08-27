give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.suspicious_sand.lore.0","color":"white","italic":false}','{"translate":"card.suspicious_sand.lore.1","color":"white","italic":false}','{"translate":"card.suspicious_sand.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.suspicious_sand","italic":"false","color":"#FBB1F2"}'},HideFlags:127,Unbreakable:1b,CustomModelData:143,card:{category:"consumable",element:"defend",rarity:"rare",name:"suspicious_sand",cost:4,placement:11}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:143}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/suspicious_sand/change
item replace entity @s enderchest.0 from block 0 0 0 container.0