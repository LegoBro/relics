give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.iron_armor.lore.0","color":"white","italic":false}','{"translate":"card.iron_armor.lore.1","color":"white","italic":false}'],Name:'{"translate":"card.iron_armor","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:23,card:{category:"consumable",element:"buff",rarity:"uncommon",name:"iron_armor",cost:8,placement:5}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:23}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/iron_armor/change
item replace entity @s enderchest.0 from block 0 0 0 container.0