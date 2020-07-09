scoreboard players operation timeout2 death_swap_m = timeout death_swap_m
scoreboard players operation timeout2 death_swap_m %= second const
execute if score timeout2 death_swap_m matches 0 run function death_swap_multi:tellraw/time_if_useful
scoreboard players reset timeout2 death_swap_m