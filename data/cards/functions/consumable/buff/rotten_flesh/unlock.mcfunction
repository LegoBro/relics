give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.rotten_flesh.lore.0","color":"white","italic":false}','{"translate":"card.rotten_flesh.lore.1","color":"white","italic":false}','{"translate":"card.rotten_flesh.lore.2","color":"white","italic":false}','{"translate":"card.rotten_flesh.lore.3","color":"white","italic":false}'],Name:'{"translate":"card.rotten_flesh","italic":"false","color":"#FBB1F2"}'},HideFlags:127,Unbreakable:1b,CustomModelData:135,card:{category:"consumable",element:"buff",rarity:"common",name:"rotten_flesh",cost:4,placement:16}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:135}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/rotten_flesh/change
item replace entity @s enderchest.0 from block 0 0 0 container.0