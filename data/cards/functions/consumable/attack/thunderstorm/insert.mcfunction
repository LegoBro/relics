execute store result score #any var run data get entity @s EnderItems[0].tag.Collection[{id:69}].count
execute unless score #any var matches 1.. run item replace block 0 0 0 container.0 with iron_nugget{gui:True,display:{Name:'[{"translate":"card.thunderstorm","italic":"false","color":"gray"}]'},HideFlags:127}
execute store result score #count var run data get entity @s EnderItems[1].tag.Collection[{id:69}].count
execute if score #any var matches 1.. if score #count var matches 1.. run item replace block 0 0 0 container.0 with carrot_on_a_stick{gui:True,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 13","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.0","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.1","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.2","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.3","color":"white","italic":false}'],Name:'[{"translate":"card.thunderstorm","italic":"false","color":"green"}]'},HideFlags:127,Unbreakable:1b,CustomModelData:69,card:{category:"consumable",element:"attack",rarity:"rare",name:"thunderstorm",cost:13,placement:0}} 1
execute if score #any var matches 1.. if score #count var matches 0 run item replace block 0 0 0 container.0 with stick{gui:True,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 13","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.0","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.1","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.2","color":"white","italic":false}','{"translate":"card.thunderstorm.lore.3","color":"white","italic":false}'],Name:'[{"translate":"card.thunderstorm","italic":"false","color":"green"},{"text":" (","italic":"false","color":"gray"},{"text":"0","italic":"false","color":"white"},{"text":")","italic":"false","color":"gray"}]'},HideFlags:127,Unbreakable:1b,CustomModelData:69,card:{category:"consumable",element:"attack",rarity:"rare",name:"thunderstorm",cost:13,placement:0}} 1
execute if score #any var matches 1.. if score #count var matches 1.. run data modify block 1 1 0 Text1 set from block 0 0 0 Items[0].tag.display.Name
execute if score #any var matches 1.. if score #count var matches 1.. run data merge block 1 1 0 {Text2:'[{"text":" (","italic":"false","color":"gray"},{"score":{"name":"#count","objective":"var"},"italic":"false","color":"white"},{"text":")","italic":"false","color":"gray"}]'}
execute if score #any var matches 1.. if score #count var matches 1.. run data merge block 1 1 0 {Text3:'[{"nbt":"Text1","block":"1 1 0","interpret":true},{"nbt":"Text2","block":"1 1 0","interpret":true}]'}
execute if score #any var matches 1.. if score #count var matches 1.. run data modify block 0 0 0 Items[0].tag.display.Name set from block 1 1 0 Text3
loot insert ~ ~ ~ mine 0 0 0 air{drop_contents:1b}