give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"},{"text":"        4 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}]','[{"translate":"attack","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"},{"text":"        0 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}]','[{"translate":"speed","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.enderman.lore.0","color":"white","italic":false}'],Name:'{"translate":"card.enderman","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:16,card:{category:"entity",element:"end",rarity:"common",name:"enderman",cost:8,placement:10}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:16}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:entity/end/enderman/change
item replace entity @s enderchest.0 from block 0 0 0 container.0