give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.splash_healing_potion.lore.0","color":"white","italic":false}','{"translate":"card.splash_healing_potion.lore.1","color":"white","italic":false}','{"translate":"card.splash_healing_potion.lore.2","color":"white","italic":false}','{"translate":"card.splash_healing_potion.lore.3","color":"white","italic":false}','{"translate":"card.splash_healing_potion.lore.4","color":"white","italic":false}','{"translate":"card.splash_healing_potion.lore.5","color":"white","italic":false}'],Name:'{"translate":"card.splash_healing_potion","italic":"false","color":"#b4d99e"}'},HideFlags:127,Unbreakable:1b,CustomModelData:118,card:{category:"consumable",element:"attack",rarity:"common",name:"splash_healing_potion",cost:8,placement:4}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:118}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/splash_healing_potion/change
item replace entity @s enderchest.0 from block 0 0 0 container.0