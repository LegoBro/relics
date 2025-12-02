give @s carrot_on_a_stick{gui:False,display:{Lore:['','[{"translate":"cost","italic":false,"color":"white"},{"text":" 20","italic":false,"color":"white"}]','{"text":"","color":"white","italic":false}','{"translate":"card.enchanted_golden_apple.lore.0","color":"white","italic":false}','{"translate":"card.enchanted_golden_apple.lore.1","color":"white","italic":false}','{"translate":"card.enchanted_golden_apple.lore.2","color":"white","italic":false}'],Name:'{"translate":"card.enchanted_golden_apple","italic":"false","color":"green"}'},HideFlags:127,Unbreakable:1b,CustomModelData:53,card:{category:"consumable",element:"buff",rarity:"legendary",name:"enchanted_golden_apple",cost:20,placement:5}} 1
item replace entity @s weapon.offhand with minecraft:totem_of_undying{CustomModelData:53}
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/enchanted_golden_apple/change
item replace entity @s enderchest.0 from block 0 0 0 container.0