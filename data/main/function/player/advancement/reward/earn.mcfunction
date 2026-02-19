## Displays the earnings of the dubloons
tellraw @s [{"translate":"dubloon.earn.1","color":"gray",with:[{"score":{"name":"#amount","objective":"var"},"color":"yellow"}]}]
tellraw @s [{"translate":"dubloon.total.1","color":"gray",with:[{"score":{"name":"@s","objective":"dubloons"},"color":"yellow"}]}]
playsound minecraft:coin_earn master @s ~ ~ ~ 1 1
