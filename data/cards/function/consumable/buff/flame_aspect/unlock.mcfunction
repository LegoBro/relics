give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.flame_aspect.lore.0","color":"white","italic":false},{"translate":"card.flame_aspect.lore.1","color":"white","italic":false},{"translate":"card.flame_aspect.lore.2","color":"white","italic":false}],item_name={"color":"#E0673A","translate":"card.flame_aspect"}, minecraft:unbreakable={},item_model="cards/flame_aspect",custom_data={gui:False, card:{id:162,category:"consumable",element:"buff",rarity:"uncommon",name:"flame_aspect",cost:6,placement:5}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/flame_aspect"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/flame_aspect/change
item replace entity @s enderchest.0 from block 0 0 0 container.0