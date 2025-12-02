give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.splash_fire_resistance_potion.lore.0","color":"white","italic":false}','{"translate":"card.splash_fire_resistance_potion.lore.1","color":"white","italic":false}','{"translate":"card.splash_fire_resistance_potion.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.splash_fire_resistance_potion","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:45,card:{category:"consumable",element:"buff",rarity:"common",name:"splash_fire_resistance_potion",cost:6,placement:5}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:45}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/splash_fire_resistance_potion/change
item replace entity @s enderchest.0 from block 0 0 0 container.0