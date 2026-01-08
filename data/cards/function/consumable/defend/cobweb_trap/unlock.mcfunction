give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.cobweb_trap.lore.0","color":"white","italic":false},{"translate":"card.cobweb_trap.lore.1","color":"white","italic":false},{"translate":"card.cobweb_trap.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.cobweb_trap"}, minecraft:unbreakable={},item_model="cards/cobweb_trap",custom_data={gui:False, card:{id:26,category:"consumable",element:"defend",rarity:"common",name:"cobweb_trap",cost:3,placement:11}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/cobweb_trap"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/cobweb_trap/change
item replace entity @s enderchest.0 from block 0 0 0 container.0