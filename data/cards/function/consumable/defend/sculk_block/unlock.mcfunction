give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.sculk_block.lore.0","color":"white","italic":false},{"translate":"card.sculk_block.lore.1","color":"white","italic":false}],item_name={"color":"#018a73","translate":"card.sculk_block"}, minecraft:unbreakable={},item_model="cards/sculk_block",custom_data={gui:False, card:{id:124,category:"consumable",element:"defend",rarity:"uncommon",name:"sculk_block",cost:0,placement:2}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/sculk_block"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/sculk_block/change
item replace entity @s enderchest.0 from block 0 0 0 container.0