# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.anvil","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:['','[{\"translate\":\"cost\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 7\",\"italic\":false,\"color\":\"white\"}]','{\"text\":\"\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.anvil.lore.0\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.anvil.lore.1\",\"color\":\"white\",\"italic\":false}'],Name:\"{\\\"translate\\\":\\\"card.anvil\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}]
scoreboard players remove @s saturation 7
function cards:consumable/attack/anvil/activate
function main:player/use_card/store