## Displays the earnings of the dubloons
tellraw @s [{"translate":"dubloon.earn.1","color":"gray"},{"score":{"name":"#amount","objective":"var"},"color":"yellow"},{"translate":"dubloon.earn.2","color":"white"}]
tellraw @s [{"translate":"dubloon.total.1","color":"gray"},{"score":{"name":"@s","objective":"dubloons"},"color":"yellow"},{"translate":"dubloon.total.2","color":"white"}]
playsound minecraft:coin_earn master @s ~ ~ ~ 1 1
