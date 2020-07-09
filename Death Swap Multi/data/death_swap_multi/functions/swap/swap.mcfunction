#players who swap:
tag @e[tag=death_swap_m] add death_swap_ms

scoreboard players set debug_time_swap death_swap_m 0
scoreboard players set timeout death_swap_m -1

#area
function death_swap_multi:swap/create_area