## Calculates ELO for 2 players



# diff = R(a) - R(b)
scoreboard players operation #diff.K var = #PlayerA rating
scoreboard players operation #diff.K var -= #PlayerB rating

# Clamp diff to [-400, 400]
execute if score #diff.K var matches ..-401 run scoreboard players set #diff.K var -400
execute if score #diff.K var matches 401.. run scoreboard players set #diff.K var 400

# offset = diff-MIN
scoreboard players operation #offset.K var = #diff.K var
scoreboard players operation #offset.K var -= #MIN.K var

# idx = offset/step
scoreboard players operation #idx.K var = #offset.K var
scoreboard players operation #idx.K var /= #STEP.K var

# w2 = offset % STEP; w1 = STEP - w2
scoreboard players operation #w2.K var = #offset.K var
scoreboard players operation #w2.K var %= #STEP.K var
scoreboard players operation #w1.K var = #STEP.K var
scoreboard players operation #w1.K var -= #w2.K var

# expected = (P[idx]*w1 + P[idx+1]*w2) / STEP
execute if score #idx.K var matches 0 run scoreboard players operation #t1.K var = #P.0 var
execute if score #idx.K var matches 0 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 0 run scoreboard players operation #t2.K var = #P.1 var
execute if score #idx.K var matches 0 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 0 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 0 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 0 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 1 run scoreboard players operation #t1.K var = #P.1 var
execute if score #idx.K var matches 1 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 1 run scoreboard players operation #t2.K var = #P.2 var
execute if score #idx.K var matches 1 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 1 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 1 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 1 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 2 run scoreboard players operation #t1.K var = #P.2 var
execute if score #idx.K var matches 2 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 2 run scoreboard players operation #t2.K var = #P.3 var
execute if score #idx.K var matches 2 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 2 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 2 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 2 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 3 run scoreboard players operation #t1.K var = #P.3 var
execute if score #idx.K var matches 3 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 3 run scoreboard players operation #t2.K var = #P.4 var
execute if score #idx.K var matches 3 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 3 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 3 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 3 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 4 run scoreboard players operation #t1.K var = #P.4 var
execute if score #idx.K var matches 4 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 4 run scoreboard players operation #t2.K var = #P.5 var
execute if score #idx.K var matches 4 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 4 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 4 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 4 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 5 run scoreboard players operation #t1.K var = #P.5 var
execute if score #idx.K var matches 5 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 5 run scoreboard players operation #t2.K var = #P.6 var
execute if score #idx.K var matches 5 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 5 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 5 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 5 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 6 run scoreboard players operation #t1.K var = #P.6 var
execute if score #idx.K var matches 6 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 6 run scoreboard players operation #t2.K var = #P.7 var
execute if score #idx.K var matches 6 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 6 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 6 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 6 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 7 run scoreboard players operation #t1.K var = #P.7 var
execute if score #idx.K var matches 7 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 7 run scoreboard players operation #t2.K var = #P.8 var
execute if score #idx.K var matches 7 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 7 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 7 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 7 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 8 run scoreboard players operation #t1.K var = #P.8 var
execute if score #idx.K var matches 8 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 8 run scoreboard players operation #t2.K var = #P.9 var
execute if score #idx.K var matches 8 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 8 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 8 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 8 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 9 run scoreboard players operation #t1.K var = #P.9 var
execute if score #idx.K var matches 9 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 9 run scoreboard players operation #t2.K var = #P.10 var
execute if score #idx.K var matches 9 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 9 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 9 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 9 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 10 run scoreboard players operation #t1.K var = #P.10 var
execute if score #idx.K var matches 10 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 10 run scoreboard players operation #t2.K var = #P.11 var
execute if score #idx.K var matches 10 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 10 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 10 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 10 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 11 run scoreboard players operation #t1.K var = #P.11 var
execute if score #idx.K var matches 11 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 11 run scoreboard players operation #t2.K var = #P.12 var
execute if score #idx.K var matches 11 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 11 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 11 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 11 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 12 run scoreboard players operation #t1.K var = #P.12 var
execute if score #idx.K var matches 12 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 12 run scoreboard players operation #t2.K var = #P.13 var
execute if score #idx.K var matches 12 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 12 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 12 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 12 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 13 run scoreboard players operation #t1.K var = #P.13 var
execute if score #idx.K var matches 13 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 13 run scoreboard players operation #t2.K var = #P.14 var
execute if score #idx.K var matches 13 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 13 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 13 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 13 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 14 run scoreboard players operation #t1.K var = #P.14 var
execute if score #idx.K var matches 14 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 14 run scoreboard players operation #t2.K var = #P.15 var
execute if score #idx.K var matches 14 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 14 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 14 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 14 run scoreboard players operation #expected.K var /= #STEP.K var

execute if score #idx.K var matches 15 run scoreboard players operation #t1.K var = #P.15 var
execute if score #idx.K var matches 15 run scoreboard players operation #t1.K var *= #w1.K var
execute if score #idx.K var matches 15 run scoreboard players operation #t2.K var = #P.16 var
execute if score #idx.K var matches 15 run scoreboard players operation #t2.K var *= #w2.K var
execute if score #idx.K var matches 15 run scoreboard players operation #expected.K var = #t1.K var
execute if score #idx.K var matches 15 run scoreboard players operation #expected.K var += #t2.K var
execute if score #idx.K var matches 15 run scoreboard players operation #expected.K var /= #STEP.K var

# handle idx == 16 (edge: use P.16 as both endpoints so interpolation yields P.16)
execute if score #idx.K var matches 16 run scoreboard players operation #expected.K var = #P.16 var

# Delta, apply changes
# t3 = OUT - expected
scoreboard players operation #t3.K var = #OUT.K var
scoreboard players operation #t3.K var -= #expected.K var

# multiply by K then divide by SCALE: delta = (K * (OUT - expected)) / SCALE
scoreboard players operation #t3.K var *= #K.K var
scoreboard players operation #delta.K var = #t3.K var
scoreboard players operation #delta.K var /= #SCALE.K var

# apply to ratings (replace PlayerA/PlayerB with names or selectors)
scoreboard players operation #PlayerA rating += #delta.K var
scoreboard players operation #PlayerB rating -= #delta.K var