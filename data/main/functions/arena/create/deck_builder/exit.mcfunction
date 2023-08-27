## Tests if saving is valid or not
scoreboard players set #test var 0

# Error checking


# Error handling
# No errors possible right now

execute if score #test var matches 0 run function main:arena/create/deck_builder/exit_success
