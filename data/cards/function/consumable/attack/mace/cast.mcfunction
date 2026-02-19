# Casts the consumable card
tellraw @a[tag=id] {"translate":"cast.use",color:green,"with":[{"selector":"@s"},{"underlined":true,"translate":"card.mace","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#E0673A","translate":"card.mace"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 12","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.mace.lore.0","color":"white","italic":false},{"translate":"card.mace.lore.1","color":"white","italic":false},{"translate":"card.mace.lore.2","color":"white","italic":false}]}}}]}
scoreboard players remove @s saturation 12
function cards:consumable/attack/mace/activate
function main:player/use_card/store