give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 9","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.lunge.lore.0","color":"white","italic":false},{"translate":"card.lunge.lore.1","color":"white","italic":false}],item_name={"color":"#E0673A","translate":"card.lunge"}, minecraft:unbreakable={},item_model="cards/lunge",custom_data={gui:False, card:{id:160,category:"consumable",element:"buff",rarity:"epic",name:"lunge",cost:9,placement:5}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/lunge"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/lunge/change
item replace entity @s enderchest.0 from block 0 0 0 container.0