scoreboard players reset @s death_swap_death

#pour pas de tellraw leave:
tag @s remove death_swap_m
scoreboard players reset @s death_swap_t
function death_swap_multi:party/leave

function death_swap_multi:tellraw/game_over
