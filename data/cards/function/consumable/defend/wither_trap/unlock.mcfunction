give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.wither_trap.lore.0","color":"white","italic":false}','{"translate":"card.wither_trap.lore.1","color":"white","italic":false}','{"translate":"card.wither_trap.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.wither_trap","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:27,card:{category:"consumable",element:"defend",rarity:"uncommon",name:"wither_trap",cost:3,placement:11}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:27}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/wither_trap/change
item replace entity @s enderchest.0 from block 0 0 0 container.0