scoreboard players set enabled death_swap_main 1
scoreboard players enable @a death_swap_join
scoreboard players reset * death_swap_death

function death_swap_multi:tellraw/game/start_info
#proposer de rejoindre ou dire si il est dans la partie
