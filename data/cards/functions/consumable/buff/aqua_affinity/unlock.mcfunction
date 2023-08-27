give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.aqua_affinity.lore.0","color":"white","italic":false}','{"translate":"card.aqua_affinity.lore.1","color":"white","italic":false}'],Name:'{"translate":"card.aqua_affinity","italic":"false","color":"#FBB1F2"}'},HideFlags:127,Unbreakable:1b,CustomModelData:137,card:{category:"consumable",element:"buff",rarity:"common",name:"aqua_affinity",cost:2,placement:17}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:137}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/aqua_affinity/change
item replace entity @s enderchest.0 from block 0 0 0 container.0