give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 12","italic":false,"color":"white"},{"text":"        6 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}]','[{"translate":"attack","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"},{"text":"        2 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}]','[{"translate":"speed","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.camel.lore.0","color":"white","italic":false}','{"translate":"card.camel.lore.1","color":"white","italic":false}','{"translate":"card.camel.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.camel","italic":"false","color":"#FBB1F2"}'},HideFlags:127,Unbreakable:1b,CustomModelData:147,card:{category:"entity",element:"overworld",rarity:"common",name:"camel",cost:12,placement:10}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:147}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:entity/overworld/camel/change
item replace entity @s enderchest.0 from block 0 0 0 container.0