give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.piston.lore.0","color":"white","italic":false}','{"translate":"card.piston.lore.1","color":"white","italic":false}'],Name:'{"translate":"card.piston","italic":"false","color":"#b4d99e"}'},HideFlags:127,Unbreakable:1b,CustomModelData:121,card:{category:"consumable",element:"attack",rarity:"common",name:"piston",cost:6,placement:13}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:121}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/piston/change
item replace entity @s enderchest.0 from block 0 0 0 container.0