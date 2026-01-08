give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.repeater.lore.0","color":"white","italic":false},{"translate":"card.repeater.lore.1","color":"white","italic":false}],item_name={"color":"#E0673A","translate":"card.repeater"}, minecraft:unbreakable={},item_model="cards/repeater",custom_data={gui:False, card:{id:161,category:"consumable",element:"buff",rarity:"common",name:"repeater",cost:3,placement:1}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/repeater"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/repeater/change
item replace entity @s enderchest.0 from block 0 0 0 container.0