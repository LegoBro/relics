give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.leather_armor.lore.0","color":"white","italic":false}','{"translate":"card.leather_armor.lore.1","color":"white","italic":false}'],Name:'{"translate":"card.leather_armor","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:46,card:{category:"consumable",element:"buff",rarity:"common",name:"leather_armor",cost:5,placement:5}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:46}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/leather_armor/change
item replace entity @s enderchest.0 from block 0 0 0 container.0