execute store result score #any var run data get entity @s EnderItems[0].tag.Collection[{id:86}].count
execute unless score #any var matches 1.. run item replace block 0 0 0 container.0 with iron_nugget{gui:True,display:{Name:'[{"translate":"card.evoker","italic":"false","color":"gray"}]'},HideFlags:127}
execute store result score #count var run data get entity @s EnderItems[1].tag.Collection[{id:86}].count
execute if score #any var matches 1.. if score #count var matches 1.. run item replace block 0 0 0 container.0 with carrot_on_a_stick{gui:True,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 20","italic":false,"color":"white"},{"text":"        7 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}]','[{"translate":"attack","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"},{"text":"        0 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}]','[{"translate":"speed","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.evoker.lore.0","color":"white","italic":false}','{"translate":"card.evoker.lore.1","color":"white","italic":false}'],Name:'[{"translate":"card.evoker","italic":"false","color":"green"}]'},HideFlags:127,Unbreakable:1b,CustomModelData:86,card:{category:"entity",element:"overworld",rarity:"epic",name:"evoker",cost:20,placement:10}} 1
execute if score #any var matches 1.. if score #count var matches 0 run item replace block 0 0 0 container.0 with stick{gui:True,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 20","italic":false,"color":"white"},{"text":"        7 ","italic":false,"color":"white"},{"translate":"health","italic":false,"color":"white"}]','[{"translate":"attack","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"},{"text":"        0 ","italic":false,"color":"white"},{"translate":"armor","italic":false,"color":"white"}]','[{"translate":"speed","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"},{"text":"        1 ","italic":false,"color":"white"},{"translate":"range","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.evoker.lore.0","color":"white","italic":false}','{"translate":"card.evoker.lore.1","color":"white","italic":false}'],Name:'[{"translate":"card.evoker","italic":"false","color":"green"},{"text":" (","italic":"false","color":"gray"},{"text":"0","italic":"false","color":"white"},{"text":")","italic":"false","color":"gray"}]'},HideFlags:127,Unbreakable:1b,CustomModelData:86,card:{category:"entity",element:"overworld",rarity:"epic",name:"evoker",cost:20,placement:10}} 1
execute if score #any var matches 1.. if score #count var matches 1.. run data modify block 1 1 0 Text1 set from block 0 0 0 Items[0].tag.display.Name
execute if score #any var matches 1.. if score #count var matches 1.. run data merge block 1 1 0 {Text2:'[{"text":" (","italic":"false","color":"gray"},{"score":{"name":"#count","objective":"var"},"italic":"false","color":"white"},{"text":")","italic":"false","color":"gray"}]'}
execute if score #any var matches 1.. if score #count var matches 1.. run data merge block 1 1 0 {Text3:'[{"nbt":"Text1","block":"1 1 0","interpret":true},{"nbt":"Text2","block":"1 1 0","interpret":true}]'}
execute if score #any var matches 1.. if score #count var matches 1.. run data modify block 0 0 0 Items[0].tag.display.Name set from block 1 1 0 Text3
loot insert ~ ~ ~ mine 0 0 0 air{drop_contents:1b}