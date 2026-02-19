# Casts the consumable card
tellraw @a[tag=id] {"translate":"cast.use",color:green,"with":[{"selector":"@s"},{"underlined":true,"translate":"card.lunge","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#E0673A","translate":"card.lunge"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 9","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.lunge.lore.0","color":"white","italic":false},{"translate":"card.lunge.lore.1","color":"white","italic":false}]}}}]}
scoreboard players remove @s saturation 9
function cards:consumable/buff/lunge/activate
function main:player/use_card/store