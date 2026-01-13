## Calculates ELO for 2 players
# #player_1 and #player_2 are the inputs (assumes Player 1 in input is winner)

#1000 and 1000
#EA = .5 for both
#R'A = 1000 + 24(1-0.5) == 1012
#R'B = 1000 + 24(0-0.5) == 988

scoreboard players operation #input_1 var = #player_1 var
scoreboard players operation #input_2 var = #player_2 var

scoreboard players operation #input_2 var -= #input_1 var


# Expected Score = E1 = 1 / (1+10^((R2-R1)/400))

# New Rating = R'1 = R1 + K*(S1-E1)