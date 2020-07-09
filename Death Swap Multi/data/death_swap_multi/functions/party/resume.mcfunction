scoreboard players remove * death_swap_death
scoreboard players set enabled death_swap_m 1

scoreboard players enable @a death_swap_t
scoreboard players reset * death_swap_death

function death_swap_multi:tellraw/started
#proposer de rejoindre ou dire si il est dans la partie
