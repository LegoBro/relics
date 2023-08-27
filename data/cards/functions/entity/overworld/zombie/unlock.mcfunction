give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"},{"text":"        3 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}]','[{"translate":"attack","italic":false,"color":"white"},{"text":" 1","italic":false,"color":"white"},{"text":"        0 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}]','[{"translate":"speed","italic":false,"color":"white"},{"text":" 1","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.zombie.lore.0","color":"white","italic":false}'],Name:'{"translate":"card.zombie","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:11,card:{category:"entity",element:"overworld",rarity:"common",name:"zombie",cost:2,placement:10}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:11}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:entity/overworld/zombie/change
item replace entity @s enderchest.0 from block 0 0 0 container.0